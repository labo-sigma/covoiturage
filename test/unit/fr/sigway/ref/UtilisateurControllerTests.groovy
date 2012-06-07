package fr.sigway.ref



import org.junit.*
import grails.test.mixin.*

@TestFor(UtilisateurController)
@Mock(Utilisateur)
class UtilisateurControllerTests {


    def populateValidParams(params) {
      assert params != null
      // TODO: Populate valid properties like...
      //params["name"] = 'someValidName'
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
        controller.update()

        assert flash.message != null
        assert response.redirectedUrl == '/utilisateur/list'

        response.reset()


        populateValidParams(params)
        def utilisateur = new Utilisateur(params)

        assert utilisateur.save() != null

        // test invalid parameters in update
        params.id = utilisateur.id
        //TODO: add invalid values to params object

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
