This homework is a general review of concepts covered in classes 1 through 4: Rails basics, Ruby basics, Ruby object oriented programming basics, and Rails models.

All questions are fill in the blanks - some have a very specific answer, and some can be answered in more than one way.

Attempt your best to answer the coding questions without running them in a Ruby interpreter - answer them based on your understanding of the Ruby programming language and of Rails.

# Ruby Basics

1. In the following code, the final output is ______________.

        x = [1, 2, 'a']
        puts x.class
1. True or false: The output of `puts 2/3` is the same as the output of `puts 2.0/3`
1. In the following code, the final output is ______________.

        puts 7+11/3*9
1. In this code snippet: 

        result = sum_of(2, 5)
   if `sum_of` is a method, then the values *2* and *5* are commonly referred to as the ___________ of `sum_of`

# Shell Basics

1. The command used to list all the files in a folder is _____________.
1. If at the shell command prompt (let's assume your prompt is `$>`), you see this:

        $> pwd
        /var/log/ssl
   and you type in the following:

        $> cd ..
        $> pwd

   Then the output you'll see is ______________.

1. On any UNIX system, like the Mac, the "top most" folder (or directory), that is, the folder that doesn't have a parent folder is called the ______________ folder.

# Rails and Web Server Basics

1. If you type in the URL `http://www.eventbrite.com/edit?eid=123` into your browser address bar, then the domain name in this URL is ______________.
1. In the URL, `https://www.google.com/search?q=new+orleans&ie=utf-8&oe=utf-8&client=firefox-a`, there are ______________ (enter a number) of query parameter(s).
   1. The value of the last parameter is ______________.
1. If your server is running at the domain name `www.superapp.com`, and you want to access the route `/search` and supply the query parameter `name` with the value *bob*, the URL you would type into the browser is _______________________________.
1. When typing in a URL, the first file you'd check to see if your Rails app will accept this URL as valid is ______________.
1. The default database used by a Rails app is ______________.
   1. If you are using this default db, the folder in your Rails app root folder where the database file is located is ______________.
1. In my Rails app's `routes.rb` file, I have the following line - answer the following questions based on this line of code:

        get('/post' => 'posts#show')

   1. The file in which the controller code for the above route is located is ______________.
   1. In the line above, `show` is called the ______________ for the given route.
   1. `show` will also be the name of a/n ______________ in the file that contains the controller code.
   1. The class name for the controller in the controller code file will be ______________.
1. Data is shared between the controller and the view via ______________ of the controller class.

# Ruby Object Oriented Programming

Fill in the following blanks based on this bit of code:

    class Auto
      attr_accessor :make, :model, :year
      def full_designation
        return "#{@make} #{@model}, made in #{@year}"
      end
    end

    my_car = Auto.new
    my_car.make='Honda'
    puts my_car.full_designation

1. `my_car` is a/n ______________ of the class `Auto`.
1. `full_designation` is a/n ______________ of the class `Auto`
1. The output of the above code is ______________.
1. For the output to look like 'Mazda Miata, made in 2001', the additional lines of code that need to be added before the `puts` statement are ______________.
1. For the make, model and year to be initialized through supplying parameters in the call to the `new` method (that is, in the line `my_car = Auto.new`), you need to add a method called ______________ to the class definition.

# Rails Models

1. To generate the Ruby code for a new model, you have to run the executable ______________
1. To each new table created for a model, in a SQL database, Rails adds ________ (enter a number) columns by default.
1. The model code generated when you run `rails generate model UserProfile name:string employee_id:integer` contains a class definition for the class ______________.
   1. This model code is generated in the file _____________ which is in the folder ______________.
1. If you create a model called `Post`, which has two attributes, `title` and `posted_date`, then:
   1. You can search for all records that have the title *First Post*, using the following code: ______________.
   1. The corresponding database table will have ______________ (enter a number) columns.
1. [Look up the behavior of the method `.first` when applied to a model class](http://edgeguides.rubyonrails.org/active_record_basics.html#read), then answer this question. If you had created the Post model as in the previous question and then ran the following lines of code in the Rails console:

        p=Post.new; p.title="Sunday"; p.save
        Post.first.delete
        p=Post.new; p.title="Monday"; p.save
        p=Post.new; p.title="Tuesday"; p.save
        p=Post.new; p.title="Wednesday"; p.save
        Post.last.delete
        p=Post.new; p.title="Thursday"; p.save
    The smallest ID in the `posts` table is _____________ and the largest ID is ______________.

# Ruby Blocks and Methods

1. The return value of a method is set with the ______________ keyword (or command.)
1. The name of a method can only start with ______________.
1. A block is just like a method - the only difference is that blocks, unlike methods, don't ______________.
1. In this line of code - `[1,5,'a'].each { |x| puts x }`, there is a block which takes ______________ (enter a number) argument/s.
1. In this line of code - `[1,5,'a'].each { |x| puts x }`, the block will be called ______________ times.
1. In this line of code - `{"name" => "bob", "age" => 5}.each { |t| puts t }`, the block will be called ______________ times.
1. In this line of code - `{"name" => "bob", "age" => 5}.each { |key, value| puts "#{key}: #{value}" }`, the value of the variable `key` will be ______________ (write down the value that is assigned to `key` each time the block is called.)

# Bonus Questions

Some of these are a bit harder, and might require you to do some Internet sleuthing!

1. If you wanted to know which Rake task does a specific thing, the command you'd type at the command line is ______________.
1. The Rake task that lists all routes is ______________.
1. *True or False:* The Ruby `nil` value has the same class as the empty string.
1. In class, we saw how to set the attributes of a model instance one at a time. For example, given the `Post` model above, we could write:

        p=Post.new; p.title="Sunday"; p.posted_date="2014-05-21"; p.save

   To set both attributes in a single line, you would instead write ______________. *(Hint: you do this by calling the `.new` method with some arguments rather than with no arguments.)*
1. 

Okay, have fun!

