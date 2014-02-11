# Ruby Mailmerge

A really simple mailmerge application written in ruby.

### Installation & Usage

1. Clone this repository onto your laptop.
2. Install the required gems:

        bundle install

3. Edit the `views/mail.erb` template, to contain the contents of the email you want to send.
4. Change the `:user_name` and `:password` in the `Pony.options` section of `app.rb` to your own gmail username (the bit before the `@gmail.com`) and password.
5. Export your data as a csv file, and copy the csv file into the app folder. Unless the csv file is called `names.csv`, you will need to change the `datafile` variable in `app.rb`
6. Run the app:

        ruby app.rb

### Warning

You are writing your email username and password directly into the source code. Make sure you **don't accidentally add, commit and push your username and password to github!**. 