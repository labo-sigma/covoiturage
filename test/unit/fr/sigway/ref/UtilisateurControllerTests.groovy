package fr.sigway.ref



import grails.plugins.springsecurity.SpringSecurityService;
import grails.test.mixin.*

import org.junit.*
import org.springframework.security.authentication.dao.SystemWideSaltSource;

@TestFor(UtilisateurController)
@Mock([Utilisateur, Adresse])
class UtilisateurControllerTests {
	
	private void defineBeans(){
		new Utilisateur().getClass().metaClass.encodePassword = { return "Password1"}
	}


    def populateValidParams(params) {
      assert params != null
      params["name"] = 'someValidName'
	  params["email"] = "test"
	  params["password"] = "testPassword"  
	  params["nom"] = "nomAdmin" 
	  params["prenom"] = "prenomAdmin"  
	  params["adresseDomicile.codePostal"] = "44000"
	  params["adresseDestination.codePostal"] = "44000"
    }

    void testIndex() {
        controller.index()
        assert "/utilisateur/list" == response.redirectedUrl
    }

    void testList() {

        def model = controller.list()

        assert model.utilisateurInstanceList.size() == 0
        assert model.utilisateurInstanceTotal == 0
    }

    void testCreate() {
       def model = controller.create()

       assert model.utilisateurInstance != null
    }

    void testSave() {
		defineBeans()
        controller.save()

        assert model.utilisateurInstance != null
        assert view == '/utilisateur/create'

        response.reset()

        populateValidParams(params)
        controller.save()

        assert response.redirectedUrl == '/utilisateur/show/1'
        assert controller.flash.message != null
        assert Utilisateur.count() == 1
    }

    void testShow() {
		defineBeans()
        controller.show()

        assert flash.message != null
        assert response.redirectedUrl == '/utilisateur/list'


        populateValidParams(params)
        def utilisateur = new Utilisateur(params)

        assert utilisateur.save() != null

        params.id = utilisateur.id

        def model = controller.show()

        assert model.utilisateurInstance == utilisateur
    }

    void testEdit() {
		defineBeans()
        controller.edit()

        assert flash.message != null
        assert response.redirectedUrl == '/utilisateur/list'


        populateValidParams(params)
        def utilisateur = new Utilisateur(params)

        assert utilisateur.save() != null

        params.id = utilisateur.id

        def model = controller.edit()

        assert model.utilisateurInstance == utilisateur
    }

    void testUpdate() {
		defineBeans()
        controller.update()

        assert flash.message != null
        assert response.redirectedUrl == '/utilisateur/list'

        response.reset()


        populateValidParams(params)
        def utilisateur = new Utilisateur(params)

        assert utilisateur.save() != null

        // test invalid parameters in update
        params.id = utilisateur.id
        //add invalid values to params object
		params."adresseDomicile.codePostal" = ""

        controller.update()

        assert view == "/utilisateur/edit"
        assert model.utilisateurInstance != null

        utilisateur.clearErrors()

        populateValidParams(params)
        controller.update()

        assert response.redirectedUrl == "/utilisateur/show/$utilisateur.id"
        assert flash.message != null

        //test outdated version number
        response.reset()
        utilisateur.clearErrors()

        populateValidParams(params)
        params.id = utilisateur.id
        params.version = -1
        controller.update()

        assert view == "/utilisateur/edit"
        assert model.utilisateurInstance != null
        assert model.utilisateurInstance.errors.getFieldError('version')
        assert flash.message != null
    }

    void testDelete() {
		defineBeans()
        controller.delete()
        assert flash.message != null
        assert response.redirectedUrl == '/utilisateur/list'

        response.reset()

        populateValidParams(params)
        def utilisateur = new Utilisateur(params)

        assert utilisateur.save() != null
        assert Utilisateur.count() == 1

        params.id = utilisateur.id

        controller.delete()

        assert Utilisateur.count() == 0
        assert Utilisateur.get(utilisateur.id) == null
        assert response.redirectedUrl == '/utilisateur/list'
    }
}
