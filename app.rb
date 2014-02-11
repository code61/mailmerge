require 'erb'
require 'csv'
require 'pony'
require 'mailmerge'

Pony.options = Pony.options = {
  :via => 'smtp',
  :via_options => {
    :address              => 'smtp.gmail.com',
    :port                 => '587',
    :enable_starttls_auto => true,
    :user_name            => 'user123',
    :password             => 'password12345',
    :authentication       => :plain, # :plain, :login, :cram_md5, no auth by default
    :domain               => "localhost.localdomain" # the HELO domain provided by the client to the server
  }
}

datafile = 'names.csv'
array = CSV.read(datafile)

array.each do |first_name, surname, email|
  # set up any instance variables you want to share with the erb template
  @first_name = first_name
  @surname    = surname

  # send the email
  Pony.mail(:to => email,
            :subject => "Wow - an email",
            :body=> erb(:mail)) 

  puts "Sent mail to #{first_name} #{surname}"
end

