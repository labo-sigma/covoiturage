package fr.sigway.ref

import org.springframework.dao.DataIntegrityViolationException

class UtilisateurController {

    static allowedMethods = [save: "POST", update: "POST", delete: "POST"]

    def index() {
        redirect(action: "list", params: params)
    }

    def list() {
        params.max = Math.min(params.max ? params.int('max') : 10, 100)
        [utilisateurInstanceList: Utilisateur.list(params), utilisateurInstanceTotal: Utilisateur.count()]
    }

    def create() {
        [utilisateurInstance: new Utilisateur(params)]
    }

    def save() {
        def utilisateurInstance = new Utilisateur(params)
        if (!utilisateurInstance.adresseDomicile.save() || 
			!utilisateurInstance.adresseDestination.save() || 
			!utilisateurInstance.save()) {
            render(view: "create", model: [utilisateurInstance: utilisateurInstance])
            return
        }

		flash.message = message(code: 'default.created.message', args: [message(code: 'utilisateur.label'), utilisateurInstance.id])
        redirect(action: "show", id: utilisateurInstance.id)
    }

    def show() {
        def utilisateurInstance = Utilisateur.get(params.id)
        if (!utilisateurInstance) {
			flash.message = message(code: 'default.not.found.message', args: [message(code: 'utilisateur.label'), params.id])
            redirect(action: "list")
            return
        }

        [utilisateurInstance: utilisateurInstance]
    }

    def edit() {
        def utilisateurInstance = Utilisateur.get(params.id)
        if (!utilisateurInstance) {
            flash.message = message(code: 'default.not.found.message', args: [message(code: 'utilisateur.label'), params.id])
            redirect(action: "list")
            return
        }

        [utilisateurInstance: utilisateurInstance]
    }

    def update() {
        def utilisateurInstance = Utilisateur.get(params.id)
        if (!utilisateurInstance) {
            flash.message = message(code: 'default.not.found.message', args: [message(code: 'utilisateur.label'), params.id])
            redirect(action: "list")
            return
        }

        if (params.version) {
            def version = params.version.toLong()
            if (utilisateurInstance.version > version) {
                utilisateurInstance.errors.rejectValue("version", "default.optimistic.locking.failure",
                          [message(code: 'utilisateur.label')] as Object[],
                          "Another user has updated this Utilisateur while you were editing")
                render(view: "edit", model: [utilisateurInstance: utilisateurInstance])
                return
            }
        }

        utilisateurInstance.properties = params

        if (!utilisateurInstance.adresseDomicile.save() || 
			!utilisateurInstance.adresseDestination.save() || 
			!utilisateurInstance.save()) {
            render(view: "edit", model: [utilisateurInstance: utilisateurInstance])
            return
        }

		flash.message = message(code: 'default.updated.message', args: [message(code: 'utilisateur.label'), utilisateurInstance.id])
        redirect(action: "show", id: utilisateurInstance.id)
    }

    def delete() {
        def utilisateurInstance = Utilisateur.get(params.id)
        if (!utilisateurInstance) {
			flash.message = message(code: 'default.not.found.message', args: [message(code: 'utilisateur.label'), params.id])
            redirect(action: "list")
            return
        }

        try {
            utilisateurInstance.delete()
			utilisateurInstance.adresseDomicile.delete();
			utilisateurInstance.adresseDestination.delete();
			flash.message = message(code: 'default.deleted.message', args: [message(code: 'utilisateur.label'), params.id])
            redirect(action: "list")
        }
        catch (DataIntegrityViolationException e) {
			flash.message = message(code: 'default.not.deleted.message', args: [message(code: 'utilisateur.label'), params.id])
            redirect(action: "show", id: params.id)
        }
    }
}
