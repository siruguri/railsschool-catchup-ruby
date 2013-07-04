require '../code/ruby/mailer_client.rb'

client = MailerModule::MailerClient.new(from: 'siruguri@gmail.com', to: 'siruguri@gmail.com; ssiruguri@techsoupglobal.org', sender_name: "Sameer Siruguri")

email_list = "Gabe Kopley <gabe@railsschool.org>, kim <kim.marquardt@gmail.com>, Sameer Siruguri <sameers.public@gmail.com>, mark muskardin <mark.muskardin@gmail.com>, Eddie Naff <eddienaff@gmail.com>, Timothy Wang <timothyjwang@gmail.com>, john hattori <johnmhattori@yahoo.com>, Doug Wright <mrdougwright@gmail.com>, Heather Stewart <hastewart39@gmail.com>, Holly Keomany <holly.keomany@gmail.com>, Stephen Schur <promethods@gmail.com>, Gregory Go <gregorygo@gmail.com>, Dan <railsschool@semiserio.us>, Andrea Passwater <apasswater@gmail.com>, Kristine Lai <screamingmunch@hotmail.com>, Dwalu Khasu <dwaluk@gmail.com>, Jeffrey Floro <jeffrey.floro@hotmail.com>, Stuart Jones <railsschool@imagescript.com>, Rebecca Elish <rebeccaelish@gmail.com>, Quinton Jones <quinton@artemis.net>, Tobias Butler <tobias@myproject.is>, cclazarou <candacelazarou@gmail.com>, Donielle Berg <dberg4489@comcast.net>, Mike Abell <mikeyabell@gmail.com>, Jesse Avshalomov <javshalo@gmail.com>, Ryan Janvier <ryan@liquidtrends.com>, Tam Thao Pham <tamthaopham@gmail.com>, Venk <venk2005@gmail.com>, travis miller <travis@gohealthycafe.com>, Kien Doan <kien.doan@gmail.com>, Ian Yang <ianyangyi@gmail.com>, Julian Martinez <julianeon@gmail.com>, Tiffany <spiderhugs@yahoo.com>"

# email_list = "Gabe Kopley <ssiruguri@techsoupglobal.org>, Sameer Siruguri <sameers.public@gmail.com>"

if !client.nil?
  client.subject = "RailsSchool Catchup: Slides and code online; Level 2 class on Jul 16!"

  client.message = 'Hi,<br><br>You are receiving this email because you had signed up for <a href="http://www.railsschool.org/l/catch-up-day-v-ruby">last Tuesday\'s Ruby Catchup class</a> at Rails School. If you were in the class, thanks for participating, and for being a lively and engaged student; your feedback will improve the class for the next batch. If you weren\'t - hello there, this is the class instructor mailing you links to the material we discussed. <p/>The code I used during the class is <a href="https://github.com/siruguri/railsschool-catchup-ruby">available on Github </a> (if you don\'t know about using Git and Github, you should look into how it works!) or you can download it as <a href="http://sameer.siruguri.net/railsschool/">a TAR.GZ or a ZIP file</a>. <p/>The lesson slides (Lessons 0 through 3) are on <a href="https://drive.google.com/#folders/0B4fq7EmVPd1WalQ5SFZBbnlCS0k">Google Docs</a>!<p>And the next class - Level 2: Blocks, Exceptions, and Writing A Webpage Scraper - will be on <b>Jul 16</b>.<p/>Cheers,<br/><br/>Sameer.'
end


email_list.split(/,\s+/).each do |email|
  puts "Emailing #{email}"
  client.to_string = email
  client.email
end
