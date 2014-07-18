This homework reviews material covered in class 6: HTML (box model), CSS, forms, and Rails Resources

# HTML Box Model

* In the following HTML, the `<title>` tag would be added between the _______ and ___________ tags:

        <html>
           <head>
               <link src="style.css" type="stylesheet"></link>
           </head>
           <body>
                <b>Hi</b> there!
           </body>
        </html>

* All HTML tags that are used for styling content are positioned in one of two ways - either as block-level or ______________.
* In the following HTML, the line "Happy birthday to you" will be on line #  ______________ (enter a number).

        <div>Happy Birthday, Jose!</div>
        <span>Happy Birthday, Happy Birthday!</span>        <div>Happy birthday to you</div>

* In the following HTML, the line "Happy birthday to you" will be on line #  ______________ (enter a number).

        <div>Happy Birthday, Jose!</div>
        <span>Happy Birthday, Happy Birthday!</span>
        <span>Happy birthday to you</span>

* In the following HTML, the line "Happy birthday to you" will be on line #  ______________ (enter a number).

        <p>Happy Birthday, Jose!</p>
        <b>Happy Birthday, Happy Birthday!</b>
        <b>Happy birthday to you</b>

* You can change the font size of the text "Product List" in the following HTML by changing the tag  ______________:

        <h3><b>Product List</b></h3>

  * To make the font bigger, you could change the tag to  ______________.

# CSS and Styling

* To make the border around "Cats!" thicker in this HTML, you would change  _____________ to  ______________:

        <div style="border: 5px solid red">Cats!</div>

* To show the text "Cats" in red, and the text "Dogs!" in blue, you would add  ______________ inside the `div` tag and `style="color: red;"` inside  ______________:

        <div> Cats and <span>Dogs!</span> </div>

# Rails Resources

* The `rails generate scaffold` command generates files for  ______________ ,  ______________ , and the  ______________ files.
* In Ruby Mine, you run the `rake` command using the keyboard shortcut  ______________ (or the menu item  ______________.)
* The four types of actions made available by the `rails generate scaffold` command are typically referred to by the acronym  ______________ actions.
* If you ran the command `rails generate scaffold Product name:string price:float`, and then `rake db:migrate`:
  * This creates a table in the database called  ______________.
  * True or false: there will be a file called `product_controller.rb` in the `app/controllers` folder.
* If you generated a scaffold which created a database table called `cities`, then the views for this scaffold are in the folder  ______________.
