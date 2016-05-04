package heroku

class PeopleController {

    def stateList = ['AL', 'AK', 'AZ', 'AR', 'CA', 'CO', 'CT', 'DE', 'FL', 'GA', 'HI', 'ID', 'IL', 'IN', 'IA', 'KS', 'KY', 'LA', 'ME', 'MD', 'MA', 'MI', 'MN', 'MS', 'MO', 'MT', 'NE', 'NV', 'NH', 'NJ', 'NM', 'NY', 'NC', 'ND', 'OH', 'OK', 'OR', 'PA', 'RI', 'SC', 'SD', 'TN', 'TX', 'UT', 'VT', 'VA', 'WA', 'WV', 'WI', 'WY']


    def index() {
        def people = Person.list()
        [people:people]
    }

    def createContactForm() {
        [stateList: stateList]
    }

    def create() {
        def p = new Person(params)

        if (p.save()) {
            redirect(action:'index')
        }
        else {
            render(view:"createContactForm", model:[Person:p])
        }
    }

    def show() {
        def p = Person.get(params.pID as int)
        [p:p]
    }

    def edit() {
        def p = Person.get(params.pID as int)
        [p:p, stateList:stateList]
    }

    def editConfirm() {
        def p = Person.get(params.pID as int)

        p.firstName = params.firstName
        p.lastName = params.lastName
        p.phone = params.phone
        p.email = params.email
        p.address = params.address
        p.city = params.city
        p.state = params.state
        p.zipcode = params.zipcode

        if (p.save()) {
            redirect(action:'index')
        }
        else {
            render(view:'edit', model:[Person:p])
        }
    }

    def delete() {
        def p = Person.get(params.pID as int)
        p.delete()
        redirect(action:'index')
    }
}