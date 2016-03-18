# Q0: Why is this error being thrown?
Because there is no definition of a Pokemon model. It is not defined in the migrations.

# Q1: How are the random Pokemon appearing? What is the common factor between all the possible Pokemon that appear? *
In the home controller, trainerless_pokemons is assigned to all pokemons in the DB that have no trainer. It then takes a random sample of size 1 from trainerless to get @pokemon, a wild pokemon that does not have a trainer. The erb file then displays this trainerless pokemon.

# Question 2a: What does the following line do "<%= button_to "Throw a Pokeball!", capture_path(id: @pokemon), :class => "button medium", :method => :patch %>"? Be specific about what "capture_path(id: @pokemon)" is doing. If you're having trouble, look at the Help section in the README.
It causes whoever clicks on the button to direct to capture_path, with an added parameter of the pokemon's ID. It says that the request must be a patch. The class is for styling purposes.

# Question 3: What would you name your own Pokemon?
I'de probably name it something badass like Joe.

# Question 4: What did you pass into the redirect_to? If it is a path, what did that path need? If it is not a path, why is it okay not to have a path here?
I only had :back in the redirect_to. This is because we can simply route our app back to the page we were previously, as we want to go back to the trainer's page that we were just on before hitting the damage button. Adding a path would be extra work and uneccesary since we can only route to damage from a trainer's page and want to go back to that page afterwards.

# Question 5: Explain how putting this line "flash[:error] = @pokemon.errors.full_messages.to_sentence" shows error messages on your form.
In th application.html.erb, we render 'layouts/messages'. In that file, there is an iteration that goes over all key value pairs of a hash called flash and formats and displays the error messages. Since we write to the flash hash, we give the messages.html.erb file something to iterate over and print the message.

# Give us feedback on the project and decal below!

# Extra credit: Link your Heroku deployed app
