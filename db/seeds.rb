# This file should contain all the record creation needed to seed the database with its default values.
# The data can then be loaded with the rails db:seed command (or created alongside the database with db:setup).
#
# Examples:
#
#   movies = Movie.create([{ name: 'Star Wars' }, { name: 'Lord of the Rings' }])
#   Character.create(name: 'Luke', movie: movies.first)

# belis = User.create!(first_name:"Belis", last_name:"Turegun", email:"belis@test.com", password:"belistest")
# Service.create!(user: belis, service_type: "Ongoing Assistance", description: "I have 2 years of experience in..", price:"$30")
# Service.create!(user: belis, service_type: "Test Prep", description: "I have 2 years of experience in..", price:"$30")

require 'faker'
puts 'Cleaning database...'

# USERS
User.destroy_all
puts 'Creating "Users"...'

#Advisors
mickael = User.create!(
  first_name:"Mickael",
  last_name:"Merle",
  email:"mickael@test.com",
  password:"mickaeltest",
  user_type: "advisor",
  username: "mickaelm",
  location: "Montreal",
  user_bio: "Hey, I am Mickael, I am working as an Advisor with Canaduh for about 2 years now. As a former immigrant that faced those issues, I wanted to help and advise all the new student facing that administrative nightmare! I am mostly specialized in helping Students to get their working visa, but don't hesitate in contacting me for any information you may need.",
  imgUrl: 'https://res.cloudinary.com/drgcg7n83/image/upload/v1582243295/Mickael_advisor.jpg',
  specialty: ["student visa", "work visa", "permanent residency"].sample,
  featured: true
)

peter = User.create!(
  first_name:"Peter",
  last_name:"Segura",
  email:"peter@test.com",
  password:"petertest",
  user_type: "advisor",
  username: "peters",
  location: "Toronto",
  user_bio: "I coach clients who are preparing for interviews. Some of these clients are unaccustomed to the interview process in their countries.
  By rehearsing their answers to align with what interviewers are looking for, offering feedback about body language, eye contact, smiles, etc. my clients feel more confident about the process and do better in the interview as a result.",
  imgUrl: 'https://res.cloudinary.com/drgcg7n83/image/upload/v1582243263/user5female_aazn9s.jpg',
  specialty: ["work visa"].sample,
  featured: true
)

alex = User.create!(
  first_name:"Alex",
  last_name:"George",
  email:"alex@test.com",
  password:"alextest",
  user_type: "advisor",
  username: "alext",
  location: "Ottawa",
  user_bio: "I have been teaching for more than 11 years. As a result, I learned more about people and the importance motivations have on the ability to learn, retain and feel confident communicating and living in the culture of English speaking communities.
  I have experience with cultures and customs from little known provinces, as well as familiarity with the more prominent immigrant and refugee language learning communities.",
  imgUrl: 'https://ca.slack-edge.com/T02NE0241-UD4L8PN67-fd496d39f43b-512',
  specialty: ["student visa", "work visa", "permanent residency", "canadian citizenship"].sample,
  featured: false
)

celine = User.create!(
  first_name:"Celine",
  last_name:"Dion",
  email:"celine@test.com",
  password:"celinetest",
  user_type: "advisor",
  username: "celinet",
  location: "Montreal",
  user_bio: "I am a licensed attorney who attended law school at the Sorbonne University, Paris, and practiced in Belgium before moving to Montreal, where I have been practicing since 2003. I am also licensed to practice in the United Kingdom. I have experience in the French, Belgian, and Canadian legal systems.
  With a B.A. in French and a diploma in French Phonetics from University College, London, and a certification in teaching English as a Second Language, I lived and taught English as a Second Language in France for 15 years in the public school system, the University system, and professional training schools for judges and lawyers.",
  imgUrl: 'https://res.cloudinary.com/drgcg7n83/image/upload/v1582243262/user1female_chsci0.jpg',
  specialty: ["canadian citizenship"].sample,
  featured: false
)

guy = User.create!(
  first_name:"Guy",
  last_name:"Lazarte",
  email:"guy@test.com",
  password:"guytest",
  user_type: "advisor",
  username: "guyl",
  location: "Montreal",
  user_bio: "I have a Bachelor’s Degree in Business from Humber College, a 120-hour TESOL certificate, an IELTS Specialist certificate and I am trained to teach the Canadian Citizenship test. I have taught English online to students (ages 5 to 12). I helped them learn English by speaking, reading and listening skills in a fun and engaging online learning platform. We worked on building their understanding of the English language using interactive games, TPR and fun characters.
  I currently tutor adults in a local ESL literacy program and online interactive platforms. I help them with reading, speaking, writing and listening skills through conversation, pronunciation, reading and skill-building exercises. We work on job readiness, study skills and interviewing skills. I also help them with test prep for the IELTS and TOEFL and practicing for the Canadian Citizenship test.",
  imgUrl: 'https://res.cloudinary.com/drgcg7n83/image/upload/v1582243262/user2male_yyqhio.jpg',
  specialty: ["canadian citizenship"].sample,
  featured: true
)

victor = User.create!(
  first_name:"Victor",
  last_name:"Bianchi",
  email:"victor@test.com",
  password:"victortest",
  user_type: "advisor",
  username: "victorb",
  location: "Calgary",
  user_bio: "I am a dedicated and earnest individual with a passion for helping others achieve their educational goals. I have a B.A. in English and have my Graduate TESOL Certification from Cleveland State University. I am currently getting my Masters in Early Childhood Education (Pre-K - 3) and together with my TESOL training, I have multiple strategies and methods for successful early childhood and ESL instruction.
  I enjoy working with all ages and backgrounds in both TESOL, ELA, USCIS, Reading, Writing, and Speaking . I have 2+ years of classroom experience teaching both children and adults.
  I believe that respect, patience, and open communication are key to successful teaching and learning. Establishing a strong relationship with the individuals I tutor sets me apart and allows me to create personalized lesson plans and activities to fit specific educational needs.",
  imgUrl: 'https://res.cloudinary.com/drgcg7n83/image/upload/v1582391682/victor%20bianchi.jpg',
  specialty: ["student visa", "work visa", "permanent residency", "canadian citizenship"].sample,
  featured: false
)

paul = User.create!(
  first_name:"Paul",
  last_name:"McCarthy",
  email:"paul@test.com",
  password:"paultest",
  user_type: "advisor",
  username: "pault",
  location: "Montreal",
  user_bio: "I tutor ESL Learners across a diverse range of age and work experience, such as, high school and college students, and business professionals. While working at P&G, I helped co-workers improve their English language skills and increase their confidence when speaking and listening to English.
  One colleague I tutored was preparing for the Canadian citizenship test and another was beginning a 6-month work assignment in my department. Both students’ native language was Japanese.
  I recommend specific strategies, such as, watching English speaking movies on television, at the movie theater, or through a streaming service to ESL Learners. I also recommend watching English speaking news and talk shows, and reading novels written in English language. Engaging in conversations using the English language can also increase the ESL Learner's ability to write and speak fluently.",
  imgUrl: 'https://res.cloudinary.com/drgcg7n83/image/upload/v1582243261/user5male_m6scsw.jpg',
  specialty: ["permanent residency", "canadian citizenship"].sample,
  featured: true
)

benjamin = User.create!(
  first_name:"Benjamin",
  last_name:"Marquis",
  email:"benjamin@test.com",
  password:"benjamintest",
  user_type: "advisor",
  username: "benjamint",
  location: "Vancouver",
  user_bio: "For the last 7 years I have been in private practice in a major law firm, practicing commercial and corporate law and Complex Civil Litigation. I am licensed in FL and New York. As to my education background I have graduated top of my Class from Temple University with a B.A. in Political Science and a specialization in Political Economy, and received a J.D. from Florida State University College of Law.
  I have been tutoring law students on various courses, including but not limited to: civil procedure, business law, Constitutional law, and legal writing, I also tutor undergraduate students with political science courses such as Canadian Government, Pre-law, business law, Canadian federalism, and constitutional law.",
  imgUrl: 'https://ca.slack-edge.com/T02NE0241-ULA1N2X46-293938af097f-512',
  specialty: ["student visa", "work visa", "permanent residency", "canadian citizenship"].sample,
  featured: true
)

travis = User.create!(
  first_name:"Travis",
  last_name:"Scott",
  email:"travis@test.com",
  password:"travistest",
  user_type: "advisor",
  username: "traviss",
  location: "Toronto",
  user_bio: "I'm a college student (legal major) who loves to teach others. I’m a native Spanish speaker, two times winner of the Real Academia Española National Championship in Cuba. I will be more than happy to become a Spanish Tutor for those in need of learning the beautiful language of Castellano (Español).
  I have full experience in tutoring Español, and its grammar. Back in my country of birth, Cuba, I was one of the top students in Spanish Literature, and Spanish Grammar. I had participated in several competitions while attending high school in Santiago de Cuba, winning first place, and second place respectively. I was one of the ten students elected to be part of the national championship in 2008 to compete with other regions of the country (Cuba).",
  imgUrl: 'https://res.cloudinary.com/drgcg7n83/image/upload/v1582243261/user1male_ne28ng.jpg',
  specialty: ["student visa", "work visa", "permanent residency", "canadian citizenship"].sample,
  featured: false
)

#Users
belis = User.create!(
  first_name:"Belis",
  last_name:"Turegun",
  email:"belis@test.com",
  password:"belistest",
  user_type: "user",
  username: "belist",
  location: "Montreal",
  user_bio: "I can help with learning English for those who either immigrated to an English speaking country or have re-located there to study for academic purposes. Classes typically focus on the four main skills, reading, writing, speaking and listening, involving a high degree of participation from students who must use the language in order to become familiar with it.
  I have experience of teaching all ages and abilities, from children to adult learners, at junior and high school, private language school and at university. I have taught general English, business English, and exam prep, in the Middle East, Europe, the U.S.A and Asia.",
  imgUrl: 'https://ca.slack-edge.com/T02NE0241-UP4T26P55-8eb7b1b86ba5-72',
  specialty: ["student visa"].sample,
)
rmb = User.create!(
  first_name:"Rose",
  last_name:"Marie",
  email:"rmb@test.com",
  password:"rmbtest",
  user_type: "user",
  username: "rmb",
  location: "Montreal",
  user_bio: Faker::Quote.matz,
  imgUrl: 'https://ca.slack-edge.com/T02NE0241-UP329CGQG-2cc8e859810d-512'
)

lou = User.create!(
  first_name:"Lou",
  last_name:"Reed",
  email:"lou@test.com",
  password:"loutest",
  user_type: "user",
  username: "loulou",
  location: "Montreal",
  user_bio: Faker::Quote.matz,
  imgUrl: 'https://res.cloudinary.com/drgcg7n83/image/upload/v1582243262/user3female_brq6od.jpg'
)

patrick = User.create!(
  first_name:"Patrick",
  last_name:"Bourget",
  email:"patrick@test.com",
  password:"patricktest",
  user_type: "user",
  username: "patrickb",
  location: "Montreal",
  user_bio: Faker::Quote.matz,
  imgUrl: 'https://ca.slack-edge.com/T02NE0241-UP4T72Z71-ad292a4d361a-512'
)

diana = User.create!(
  first_name:"Diana",
  last_name:"Ross",
  email:"diana@test.com",
  password:"dianatest",
  user_type: "user",
  username: "dianaqueen",
  location: "Montreal",
  user_bio: "I can help with learning English for those who either immigrated to an English speaking country or have re-located there to study for academic purposes. Classes typically focus on the four main skills, reading, writing, speaking and listening, involving a high degree of participation from students who must use the language in order to become familiar with it.
  I have experience of teaching all ages and abilities, from children to adult learners, at junior and high school, private language school and at university. I have taught general English, business English, and exam prep, in the Middle East, Europe, the U.S.A and Asia.",
  imgUrl: 'https://ca.slack-edge.com/T02NE0241-UP4T26P55-8eb7b1b86ba5-72'
)

# SERVICES
Service.destroy_all
puts 'Creating "Services"...'

service1 = Service.create!(
  user: mickael,
  service_type: "General Consultation",
  description: "Get professional advice and council from a certified immigration advisor to put you on the right path to citizenship. The service includes a personalized assesement and a tailored solution. Consultations can be conducted in person or remotely if a physical meeting is not possible. Appointments last 1 hour and a detailed citizenship plan is delivered to you digitaly within 5 business days.",
  path: "Canadian Citizenship",
  price: "175"
)
service2 = Service.create!(
  user: alex,
  service_type: "General Consultation",
  path: "Canadian Citizenship",
  description: "Get professional advice and council from a certified immigration advisor to put you on the right path to citizenship. The service includes a personalized assesement and a tailored solution. Consultations can be conducted in person or remotely if a physical meeting is not possible. Appointments last 1 hour and a detailed citizenship plan is delivered to you digitaly within 5 business days.",
  price: "99"
)
service3 = Service.create!(
  user: benjamin,
  service_type: "Ongoing Assistance",
  path: "Canadian Citizenship",
  description: "Get professional advice and council from a certified immigration advisor to put you on the right path to citizenship. The service includes a personalized assesement and a tailored solution. Consultations can be conducted in person or remotely if a physical meeting is not possible. Appointments last 1 hour and a detailed citizenship plan is delivered to you digitaly within 5 business days.",
  price: "140"
)
# -----------------------------------------------------------------------------------------------
service4 = Service.create!(
  user: mickael,
  service_type: "Ongoing Assistance",
  description: "Assistance from start to finish in helping you prepare documentation for your Canadian student visa application process. Pre-planned and scheduled follow-up appointments give you the checkpoints along the way to ensure you are confident and stress free. This service guarantees a tailor fit solution to your immigration needs.",
  path: "Student Visa",
  price: "250"
)
service5 = Service.create!(
  user: victor,
  service_type: "Test Prep",
  description: "Assistance from start to finish in helping you prepare documentation for your Canadian student visa application process. Pre-planned and scheduled follow-up appointments give you the checkpoints along the way to ensure you are confident and stress free. This service guarantees a tailor fit solution to your immigration needs.",
  path: "Student Visa",
  price: "200"
)
service6 = Service.create!(
  user: benjamin,
  service_type: "General Consultation",
  description: "Assistance from start to finish in helping you prepare documentation for your Canadian student visa application process. Pre-planned and scheduled follow-up appointments give you the checkpoints along the way to ensure you are confident and stress free. This service guarantees a tailor fit solution to your immigration needs.",
  path: "Student Visa",
  price: "300"
)
# ------------------------------------------------------------------------------------------------
service7 = Service.create!(
  user: mickael,
  service_type: "Test Prep",
  description: "Professional tutoring to help prepare for your permanent residency exams. Cover the Canadian value chart, written and spoken language test prep. This service includes 3hrs of one on one sessions booked at your convenience.",
  path: "Permanent Residency",
  price: "140"
)
service8 = Service.create!(
  user: benjamin,
  service_type: "Ongoing Assistance",
  description: "Professional tutoring to help prepare for your permanent residency exams. Cover the Canadian value chart, written and spoken language test prep. This service includes 3hrs of one on one sessions booked at your convenience.",
  path: "Permanent Residency",
  price: "300"
)
service9 = Service.create!(
  user: victor,
  service_type: "Test Prep",
  description: "Professional tutoring to help prepare for your permanent residency exams. Cover the Canadian value chart, written and spoken language test prep. This service includes 3hrs of one on one sessions booked at your convenience.",
  path: "Permanent Residency",
  price: "300"
)
# -----------------------------------------------------------------------------------------------
service10 = Service.create!(
  user: mickael,
  service_type: "Ongoing Assistance",
  path: "Work Visa",
  description: "Professional tutoring to help prepare for your work permit process. Cover the Canadian value chart, written and spoken language test prep and job interview coaching. This service includes 3hrs of one on one sessions booked at your convenience.",
  price: "150"
)
service11 = Service.create!(
  user: alex,
  service_type: "Ongoing Assistance",
  path: "Work Visa",
  description: "Professional tutoring to help prepare for your work permit process. Cover the Canadian value chart, written and spoken language test prep and job interview coaching. This service includes 3hrs of one on one sessions booked at your convenience.",
  price: "90"
)
service12 = Service.create!(
  user: benjamin,
  service_type: "Test Prep",
  path: "Work Visa",
  description: "Professional tutoring to help prepare for your work permit process. Cover the Canadian value chart, written and spoken language test prep and job interview coaching. This service includes 3hrs of one on one sessions booked at your convenience.",
  price: "75"
)


# APPOINTMENTS
Appointment.destroy_all
puts 'Creating "Appointments"...'

appointment1 = Appointment.create!(
  date: Faker::Date.in_date_period,
  status: ["pending confirmation", "confirmed", "declined"].sample,
  service: service1,
  user: rmb,
)
appointment2 = Appointment.create!(
  date: Faker::Date.in_date_period,
  status: ["pending confirmation", "confirmed", "declined"].sample,
  service: service2,
  user: mickael,
)
appointment3 = Appointment.create!(
  date: Faker::Date.in_date_period,
  status: ["pending confirmation", "confirmed", "declined"].sample,
  service: service3,
  user: lou,
)
appointment4 = Appointment.create!(
  date: Faker::Date.in_date_period,
  status: ["pending confirmation", "confirmed", "declined"].sample,
  service: service3,
  user: patrick,
)

# REVIEWS
Review.destroy_all
puts 'Creating "Reviews"...'

review1 = Review.create!(
  title: "Great service all around!!",
  service: service1,
  user: rmb,
  rating: 5,
  content: "My experience was wonderful with Canaduh! I would be lost without Mikael Merle. The advisor was extremely helpful and I got exactly what I needed. 5 stars and will continue on my journey!"
)

review2 = Review.create!(
  title: "What an incredible experience",
  service: service1,
  user: peter,
  rating: 5,
  content: "Canaduh has completely surpassed our expectations. Just what I was looking for. Canaduh is the real deal! Very easy to use. Canaduh did exactly what you said it does. I could probably go into sales for you. I'm good to go. I would like to personally thank you for your outstanding product. I wish I would have thought of it first. We're loving it."
)

review3 = Review.create!(
  title: "Time saver for sure",
  service: service1,
  user: alex,
  rating: 5,
  content: "I love your system. I like Canaduh more and more each day because it makes my life a lot easier. Canaduh is exactly what our business has been lacking. No matter where you go, Canaduh is the coolest, most happening thing around!"
)
review4 = Review.create!(
  title: "Quite possibly the simplest way to get",
  service: service1,
  user: celine,
  rating: 5,
  content: "The best on the net! The advisor impressed me on multiple levels. Thank you so much for your help."
)
review5 = Review.create!(
  title: "Great service!!",
  service: service1,
  user: guy,
  rating: 5,
  content: "My experience was wonderful with Canaduh! The advisor was extremely helpful and I got exactly what I needed. 5 stars and will continue on my journey!"
)
review6 = Review.create!(
  title: "Great service!!",
  service: service1,
  user: benjamin,
  rating: 5,
  content: "I would also like to say thank you to all your staff. Advisors has completely surpassed our expectations. Advisors has got everything I need. "
)


puts 'Finished!'
