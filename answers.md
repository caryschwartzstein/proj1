# Q0: Why is this error being thrown?
	This is being thrown because there is no Pokemon model, so when home#index is called, the server does not know what to do

# Q1: How are the random Pokemon appearing? What is the common factor between all the possible Pokemon that appear? *
	The home controller is simply picking the Pokemon that dont have trainers and selecting a sample from them, a random one. The common factor between all of the possible Pokemon that appear is that they don't have a trainer.

# Question 2a: What does the following line do "<%= button_to "Throw a Pokeball!", capture_path(id: @pokemon), :class => "button medium", :method => :patch %>"? Be specific about what "capture_path(id: @pokemon)" is doing. If you're having trouble, look at the Help section in the README.
This line creates a button to capture a pokemon. The capture_path(id: @pokemon) calls the capture method in pokemon and directs to the URL using the @pokemon as the input for the id. This will end up capturing the pokemon and redirecting to the home page.

# Question 3: What would you name your own Pokemon?
I would just name him geodude. Geodude is a bomb pokemon and you can't get much better.

# Question 4: What did you pass into the redirect_to? If it is a path, what did that path need? If it is not a path, why is it okay not to have a path here?
I passed in a URL to the redirect_to. I was able to put in variables into the URL path. The redirect_to method is able to take in a multitude of different inputs due to the options{} input.

# Question 5: Explain how putting this line "flash[:error] = @pokemon.errors.full_messages.to_sentence" shows error messages on your form.
This stores the error messages which are outputted later in the application.html.erb page. This page renders 'layouts/messages' which presents all of the messages that were stored for flash. So the error is outputted before the page yields all of the other information on the page.

# Give us feedback on the project and decal below!
Doing great!

# Extra credit: Link your Heroku deployed app
https://limitless-woodland-60133.herokuapp.com/

