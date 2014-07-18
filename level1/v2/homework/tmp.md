This homework reviews material covered in class 4 and 5: Models, model associations, and HTML Basics

# Models

1. The `Rails generate model` command requires two inputs - the name of the model and a list of ____________________.
1. A model in my Rails app is stored in a database table called `appointments`. The name of the corresponding model class in the app that is used to access data from this table is ____________________.
1. I have the following code in the file `app/models/child.rb`:

        class Child < ActiveRecord::Base
        end
   If I have already run the default migrations created when I generated this model, this means there will be a table named ____________________ in my database.
1. I ran the following model generation command in my app

        rails generate model Vehicle num_wheels:integer make:string

     Which of these statements will NOT generate an error? (Select the appropriate ones.)

    1. `car1 = Vehicle.new; car1.make='Honda'`
    1. `car1 = Vehicle.new; car1.last_updated_at=0`
    1. `car1 = Vehicle.new; car1.created_at=5; car1.save`
    1. `car1 = Vehicle.new; car1.created_at='Fri, 78 Jun 2014 15:00:00'; car1.save`
1. If I perform the following commands, I will get an error - that's because I need to execute one more step, which is ____________________
        rails generate model Vehicle num_wheels:integer make:string
        rails console
        (in console): cars = Vehicle.all
1. If I have a table called `devices` in my database, and I created the corresponding model class for it, then in the Rails console:
   1. The command I would type to know how many rows are in that table is ____________________.
   1. If the Device model was generated as `rails generate model Device specs:text version:integer`, then to know the version of the device whose information is stored in the fifth row of the `devices` table, I could run this/these statements: ____________________ (Hint: start `Device.all`)
   1. True or False: If I run `Device.all[3]` and don't get a `nil` value, then I can run `Device.find(3)` without an error.
1. If there is a model class called `Room`, and a database table called `rooms` in my app, then the value of `Room.all.length` is equal to the number of ____________________ in `rooms`.

# Model Associations

1. An association method is added to a model, when there is a ____________________ between that model and another model.
1. If I have a model class in my app as follows:

        class Route < ActiveRecord::Base
	    belongs_to :bus
        end

     this means there is definitely another model class in my app called ____________________ (assuming there are no errors.)
1. Adding the `belongs_to :user` method call to a model class named `Cart`, means that in the `carts` database table, there's definitely a column named ____________________ (assuming there are no errors.)
1. Suppose in my database I have:
   1. A table called `doctors` with columns `name` and `specialization`,
   1. A table called `clinics` with columns `location` and `number_of_rooms`,
   And I have a model class `Doctor` in which I call `belongs_to(:clinic)`, then I also need to add ____________________ to the table ____________________.

# HTML Basics

1. All tags in an HTML document start with the character ________.
1. An HTML tag can optionally have a list of ____________________ that are each specified in the form __________________.
1. In the following HTML, the text that will be displayed in the browser is:

ok just testing
and this

hello world

