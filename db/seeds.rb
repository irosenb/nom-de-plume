"It was the trip of a lifetime, yet...
Bacon sandwiches always reminded her...
The fire was getting closer...
His voice had never sounded so cold...
They found his diary under his bed...
It started with a chance meeting on a film-set...
As soon as she walked in, she felt the tension...
This time it wouldn't be so easy to fool them...
Now that her secret was out, she would have to...
He was excited to find 150 new emails in his inbox...
That summer seemed to last forever...
No-one had ever mentioned Mum had a twin...
When she opened the door, she wished...
He knew he must keep very still while he waited...
He was older than she'd thought...
As she searched, her movements were frantic...
The house wasn't the same to her any more...
The entrance to the tunnel was his only way out...
Now that her secret was out, she would have to...
The whole family had been cursed since...
She took a deep breath and said to her boss...
He hadn't meant to scare him...
It was time. She'd fought against it for so long...
Reluctantly, he handed over the key...
The pink glove lay on the ground, almost covered...
He didn't want to go out on such a night but...
He had waited twenty years to return it...
The attack was over in seconds...
The text message simply said 'very clever'...
He was floating in space...
He had the urge to look out and see nothing
She kept checking her phone
She was carried along by the crowd".split("\n").each do |line|
  OpeningLine.create(content: line)
end

plume = User.create(
  :name => "Nom de Plume",
  :email => "nomdeplume@flatironschool.com",
  :password => "12345",
  :password_confirmation => "12345",
  :phone_number => "555 555 5555"
  )

# rlstine = User.create(
#   :name => "RL Stine",
#   :email => "rlstine@flatironschool.com",
#   :password =>'12345',
#   :password_confirmation => '12345',
#   :phone_number => "+16176407951"
#   )

# rlstine_goog = User.create(
#   :name => "RL Stine2",
#   :email => "rlstine2@flatironschool.com",
#   :password =>'12345',
#   :password_confirmation => '12345',
#   :phone_number => "+19739785064"
#   )

jonathan = User.create(
  name: "Jonathan Franzen",
  phone_number: "+19144171895",
  email: "franzen@flatironschool.com",
  password: "12345",
  password_confirmation: "12345"
  )

ernest = User.create(
  name: "Hemingway",
  phone_number: "+15035377883",
  email: "hemingway@flatironschool.com",
  password: "12345",
  password_confirmation: "12345"
  )

simone = User.create(
  name: "Simone de Beauvoir",
  phone_number: "+13307036872",
  email: "simone@flatironschool.com",
  password: "12345",
  password_confirmation: "12345"
  )

# seed data with stories and lines
11.times do 
  Story.create
end

lorem = "Lorem Ipsum is simply dummy text of the printing and typesetting industry."

Story.all.each do |story|
  story.lines.create(content: lorem, user: User.all.sample)
end

story = Story.new
story.lines.build(content: OpeningLine.random_line, user: plume)
story.next_user_id = 3
story.save
# Twilio::SMS.create :to => ernest.phone_number, :from => ENV["TWILIO_NUMBER"],
#                  :body => story.lines.first.content
