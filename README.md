# Phoenix Things I Bought Sample Application

This is an attempt to create the ruby on rails application things_i_bought from the book Rails in Action, using the Phoenix framework.

Along the way things that cannnot be recreated with phoenix would be noted below.

# PnxThingsIBought

To start your new Phoenix application you have to:

1. Install dependencies with `mix deps.get`
2. Start Phoenix router with `mix phoenix.start`

Now you can visit `localhost:4000` from your browser.


## Notes

* If you choose to change the application's structure, you could manually start the router from your code like this `PnxThingsIBought.Router.start`

### Ruby on Rails - Phoenix 

* Since there is no scaffold generator for Phoenix the controller, views and migrations will be created manually.
* is there a form_for equivalent in Phoenix or we are only using the form tag?
* is there a partial to use form in edit/new as in Rails?
* is there a way to display errors in new form as in model.errors.any? in Rails?
* Phoenix alrady comes with bootstrap(?) so styling css is already available.
* is there a flash message equivalent in Phoenix?
