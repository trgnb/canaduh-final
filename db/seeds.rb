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

# USERS #
User.destroy_all
puts 'Creating "Users"...'
## Admin ##
admin = User.create!(
  first_name:"Admin",
  last_name:"Admin",
  email:"admin@test.com",
  password:"admintest",
  user_type: "admin",
  username: "admin",
  location: "Montreal",
  user_bio: "",
  imgUrl: '',
  specialty: "",
  featured: true
)

## Advisors ##
#going to change my picture, but need to take one. Will add Patrick and Rosemarie Pictures in the chatroom##
mickael = User.create!(
  first_name:"Mickael",
  last_name:"Merle",
  email:"mickael@test.com",
  password:"mickaeltest",
  user_type: "advisor",
  username: "mickaelm",
  location: "Montreal",
  user_bio: "Hello, I am Mickael! I am a certified immigration adviser and I have been offering my services on Canaduh for about 2 years now. I am mostly specialized in Permanent Residency applications with 99.9% success rate",
  imgUrl: 'https://res.cloudinary.com/drgcg7n83/image/upload/v1585881475/me1_r7us6h.png',
  specialty: "work visa",
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
  imgUrl: 'https://res.cloudinary.com/drgcg7n83/image/upload/v1585520856/advisor4_vofpf7.png',
  specialty: "student visa",
  featured: false
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
  imgUrl: 'https://res.cloudinary.com/drgcg7n83/image/upload/v1585520857/advisor10_xd7cpe.png',
  specialty: "permanent residency",
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
  imgUrl: 'https://res.cloudinary.com/drgcg7n83/image/upload/v1585520856/advisor7_z5iyyo.png',
  specialty: "canadian citizenship",
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
  imgUrl: 'https://res.cloudinary.com/drgcg7n83/image/upload/v1585520855/advisor3_tuepc8.png',
  specialty: ["student visa", "work visa", "permanent residency", "canadian citizenship"].sample,
  featured: false
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
  imgUrl: 'https://res.cloudinary.com/drgcg7n83/image/upload/v1585520855/advisor1_udlpec.png',
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
  imgUrl: 'https://res.cloudinary.com/drgcg7n83/image/upload/v1585520856/advisor4_vofpf7.png',
  specialty: ["student visa", "work visa", "permanent residency", "canadian citizenship"].sample,
  featured: false
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
  featured: false
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
  imgUrl: 'https://res.cloudinary.com/drgcg7n83/image/upload/v1585520858/advisor8_lpnilp.png',
  specialty: ["student visa", "work visa", "permanent residency", "canadian citizenship"].sample,
  featured: false
)

## Users ##
belis1 = User.create!(
  first_name:"Belis",
  last_name:"Turegun",
  email:"belis1@test.com",
  password:"belis1test",
  user_type: "user",
  username: "belist1",
  location: "Montreal",
  user_bio: "I can help with learning English for those who either immigrated to an English speaking country or have re-located there to study for academic purposes. Classes typically focus on the four main skills, reading, writing, speaking and listening, involving a high degree of participation from students who must use the language in order to become familiar with it.
  I have experience of teaching all ages and abilities, from children to adult learners, at junior and high school, private language school and at university. I have taught general English, business English, and exam prep, in the Middle East, Europe, the U.S.A and Asia.",
  imgUrl: 'https://res.cloudinary.com/drgcg7n83/image/upload/v1585868910/user-F-4-Belis_fjjkix.png',
  path_type: "permanent residency"
)
belis2 = User.create!(
  first_name:"Belis",
  last_name:"Turegun",
  email:"belis2@test.com",
  password:"belis2test",
  user_type: "user",
  username: "belist2",
  location: "Montreal",
  user_bio: "I can help with learning English for those who either immigrated to an English speaking country or have re-located there to study for academic purposes. Classes typically focus on the four main skills, reading, writing, speaking and listening, involving a high degree of participation from students who must use the language in order to become familiar with it.
  I have experience of teaching all ages and abilities, from children to adult learners, at junior and high school, private language school and at university. I have taught general English, business English, and exam prep, in the Middle East, Europe, the U.S.A and Asia.",
  imgUrl: 'https://res.cloudinary.com/drgcg7n83/image/upload/v1585868910/user-F-4-Belis_fjjkix.png',
  path_type: "permanent residency"
)
belis3 = User.create!(
  first_name:"Belis",
  last_name:"Turegun",
  email:"belis3@test.com",
  password:"belis3test",
  user_type: "user",
  username: "belist3",
  location: "Montreal",
  user_bio: "I can help with learning English for those who either immigrated to an English speaking country or have re-located there to study for academic purposes. Classes typically focus on the four main skills, reading, writing, speaking and listening, involving a high degree of participation from students who must use the language in order to become familiar with it.
  I have experience of teaching all ages and abilities, from children to adult learners, at junior and high school, private language school and at university. I have taught general English, business English, and exam prep, in the Middle East, Europe, the U.S.A and Asia.",
  imgUrl: 'https://res.cloudinary.com/drgcg7n83/image/upload/v1585868910/user-F-4-Belis_fjjkix.png',
  path_type: "permanent residency"
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
  imgUrl: 'https://res.cloudinary.com/drgcg7n83/image/upload/v1585868910/user-F-3-rose-marie_h9jhwl.png',
  path_type: "student visa"
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
  imgUrl: 'https://res.cloudinary.com/drgcg7n83/image/upload/v1585869183/user-M-5_uilhoc.png',
  path_type: "canadian citizenship"
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
  imgUrl: 'https://res.cloudinary.com/drgcg7n83/image/upload/v1585869184/user-M-4-Patrick_bcvfmh.png',
  path_type: "permanent residency"
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
  imgUrl: 'https://res.cloudinary.com/drgcg7n83/image/upload/v1585868910/user-F-5_tkvhkd.png',
  path_type: "permanent residency"
)

### Users for Reviews ###
jean = User.create!(
  first_name:"Jean",
  last_name:"Dujardin",
  email:"jean@test.com",
  password:"jeantest",
  user_type: "user",
  username: "jdujardin",
  location: "Montreal",
  user_bio: Faker::Quote.matz,
  imgUrl: 'https://res.cloudinary.com/drgcg7n83/image/upload/v1585869184/user-M-1_bhaprk.png',
  path_type: "permanent residency"
)
mariepier = User.create!(
  first_name:"Marie",
  last_name:"Pier",
  email:"mariepier@test.com",
  password:"mariepiertest",
  user_type: "user",
  username: "mpier",
  location: "Montreal",
  user_bio: Faker::Quote.matz,
  imgUrl: 'https://res.cloudinary.com/drgcg7n83/image/upload/v1585868910/user-F-1_od61tk.png',
  path_type: "permanent residency"
)
sarah = User.create!(
  first_name:"Sarah",
  last_name:"Ziani",
  email:"sarah@test.com",
  password:"sarahatest",
  user_type: "user",
  username: "sziani",
  location: "Montreal",
  user_bio: Faker::Quote.matz,
  imgUrl: 'https://res.cloudinary.com/drgcg7n83/image/upload/v1585868908/user-F-2_nmfrzr.png',
  path_type: "permanent residency"
)
pablo = User.create!(
  first_name:"Pablo",
  last_name:"Escbobar",
  email:"pablo@test.com",
  password:"pablotest",
  user_type: "user",
  username: "pescobar",
  location: "Montreal",
  user_bio: Faker::Quote.matz,
  imgUrl: 'https://res.cloudinary.com/drgcg7n83/image/upload/v1585869181/user-M-2_zpna20.png',
  path_type: "permanent residency"
)
jackie = User.create!(
  first_name:"Jackie",
  last_name:"Chan",
  email:"jackie@test.com",
  password:"jackietest",
  user_type: "user",
  username: "jchan",
  location: "Montreal",
  user_bio: Faker::Quote.matz,
  imgUrl: 'https://res.cloudinary.com/drgcg7n83/image/upload/v1585869183/user-M-3_eihtqd.png',
  path_type: "permanent residency"
)
brad = User.create!(
  first_name:"Brad",
  last_name:"Pitt",
  email:"brad@test.com",
  password:"bradtest",
  user_type: "user",
  username: "bpitt",
  location: "Montreal",
  user_bio: Faker::Quote.matz,
  imgUrl: 'https://res.cloudinary.com/drgcg7n83/image/upload/v1585870030/user-M-8_ypqmsr.png',
  path_type: "permanent residency"
)
harry = User.create!(
  first_name:"Harry",
  last_name:"Potter",
  email:"harry@test.com",
  password:"harrytest",
  user_type: "user",
  username: "hpotter",
  location: "Montreal",
  user_bio: Faker::Quote.matz,
  imgUrl: 'https://res.cloudinary.com/drgcg7n83/image/upload/v1585870030/user-m-7_zqeb0w.png',
  path_type: "permanent residency"
)

### Users for Timeline ###

# ****************************************************************************************************************************************************************************************************************************************************************************************************************************************************************************************************** #

# SERVICES #
Service.destroy_all
puts 'Creating "Services"...'

## Permanent Residency ##
service1 = Service.create!(
  user: mickael,
  service_type: "General Consultation",
  path: "Permanent Residency",
<<<<<<< HEAD
  description: "Got plans to come to Canada or extend your stay as a worker?
  Mickaël Merle, a certified lawyer, can advise you on preparing your application,
  plus he can inform you of your options for transitioning from temporary status
  to permanent status. Get started by booking a consultation! If you choose to retain
  his services, Canaduh will credit the cost of your consultation towards your
  total services.",
=======
  description: "Get professional advice and council from a certified immigration advisor to put you on the right path to your Permanent Residency. During a one-hout consultation we will build a detailed plan for your journey.",
>>>>>>> afe20a5db1e4e697c1b29b4ee09d3469a814ffef
  price: "175"
)
service2 = Service.create!(
  user: alex,
  service_type: "General Consultation",
  description: "Get professional advice and council from Alex George, a certified
  immigration advisor to put you on the right path to you Permanent Residency.
  The service includes a personalized assesement and a tailored solution.
  Consultations can be conducted in person or remotely if a physical meeting
  is not possible. Appointments last 1 hour and a detailed plan is delivered to
  you digitaly within 5 business days.",
  path: "Permanent Residency",
<<<<<<< HEAD
=======
  description: "Get professional advice from a licenced immigration advisor. During the General Consultation we will build a custom plan to your specific situation.",
>>>>>>> afe20a5db1e4e697c1b29b4ee09d3469a814ffef
  price: "150"
)
service3 = Service.create!(
  user: peter,
  service_type: "Test Prep",
<<<<<<< HEAD
  path: "Permanent Residency",
  description: "Our 60 minute Test Preparation are an excellent starting point for
  those who want to fully explore their Canadian immigration options. Our Regulated
  Canadian Immigration Consultant, Peter Segura, will go through all of your
  possible Canadian immigration options as well as how each immigration process
  works and what to expect from the process from the initial application up to
  landing in Canada.",
=======
  path: "Canadian Citizenship",
  description: "To become a citizen, you'll need to take a Canadian Citizenship test to meet the knowledge requirement for citizenship. This Service will help you master Canada's history, geography, political system, national symbols, identity and values, and of the rights and responsibilities of citizenship.",
>>>>>>> afe20a5db1e4e697c1b29b4ee09d3469a814ffef
  price: "70"
)
service4 = Service.create!(
  user: mickael,
  service_type: "Ongoing Assistance",
  path: "Permanent Residency",
<<<<<<< HEAD
  description: "Our 30 minute consultation is designed for those who know which
  questions they would like answered and do not need an in-depth explanation of
  the process. We offer you a Test Preparation to go deeper in your future path.",
  price: '99'
=======
  description: "From establishing your personal plan to the reception of your Permanent Resident card, I am offering a 24/7 assistance for any question, validation or moral support during your immigration process.",
  price: "400"
>>>>>>> afe20a5db1e4e697c1b29b4ee09d3469a814ffef
)
service5 = Service.create!(
  user: alex,
  service_type: "Test Prep",
  path: "Permanent Residency",
<<<<<<< HEAD
  description: "IRCC instructions are extremely detailed and not always easy to
  understand the first or fifth time you have read them. You may not have the time
  or desire to learn Canadian immigration laws and regulations, and how they apply
  to your individual situation. Even if your application is straightforward, there
  are so many details that can cause it to be returned or refused – a simple mistake
  can cause you to lose months in your application.",
  price: "140"
=======
  description: "If you don't understand what 'Test d'Évaluation du Français' means, you definitely need to book a test preparation for the Mandatory French Exam!",
  price: "99"
>>>>>>> afe20a5db1e4e697c1b29b4ee09d3469a814ffef
)
service6 = Service.create!(
  user: celine,
  service_type: "Ongoing Assistance",
<<<<<<< HEAD
  path: "Permanent Residency",
  description: "Assistance from start to finish in helping you prepare documentation
  for your Canadian student visa application process. Pre-planned and scheduled
  follow-up appointments give you the checkpoints along the way to ensure you
  are confident and stress free. This service guarantees a tailor fit solution
  to your immigration needs.",
  price: "250"
)
service7 = Service.create!(
  user: guy,
  service_type: "General Consultation",
  path: "Permanent Residency",
  description: "Before you start on your path, be sure that you know what to
  expect. Guy Lazarte can assist you by giving you a clear picture of the
  immigration environment, your options and the steps to take. Once you have a
  better understanding, then you can decide whether you want to hire our team to
  assist you through one of our services. One of our licensed immigration
  consultants can speak with you in person, online or on the phone about your
  unique immigration situation and to give you a breakdown of your options and
  a blueprint of your road ahead.",
  price: "250"
=======
  description: "Ongoing assistance during your immigration is essential to do reach each milestone of your immigration process. I will guide you every steps of the way, providing you best pratices that have been proven successful!",
  path: "Permanent Residency",
  price: "500"
)
service7 = Service.create!(
  user: mickael,
  service_type: "Ongoing Assistance",
  path: "Work Visa",
  description: "From establishing your personal plan to the activation of your Work Visa, I am offering a 24/7 assistance for any question, validation or moral support during your immigration process.",
  price: "140"
>>>>>>> afe20a5db1e4e697c1b29b4ee09d3469a814ffef
)
service8 = Service.create!(
  user: guy,
  service_type: "General Consultation",
  path: "Permanent Residency",
<<<<<<< HEAD
  description: "Our 60 minute Test Preparation are an excellent starting point for
  those who want to fully explore their Canadian immigration options. Our Regulated
  Canadian Immigration Consultant, Peter Segura, will go through all of your
  possible Canadian immigration options as well as how each immigration process
  works and what to expect from the process from the initial application up to
  landing in Canada.",
  price: "99"
=======
  description: "Don't know where to start? Book a General Consultation to build your custom plan to a new life!",
  price: "90"
>>>>>>> afe20a5db1e4e697c1b29b4ee09d3469a814ffef
)
service9 = Service.create!(
  user: paul,
  service_type: "General Consultation",
<<<<<<< HEAD
  path: "Permanent Residency",
  description: "You know that Canadian immigration applications can be complicated,
  time consuming, and downright frustrating. You know because you’ve experienced
  it firsthand, which is why you’re considering working with a representative on
  your immigration application.",
=======
  path: "Work Visa",
  description: "Open work permit? Employer-specific work permit? You don't know which one applies to your current status? I am here to help! Book an hour consultation and everything will be crystal clear.",
>>>>>>> afe20a5db1e4e697c1b29b4ee09d3469a814ffef
  price: "100"
)

# ****************************************************************************************************************************************************************************************************************************************************************************************************************************************************************************************************** #

# APPOINTMENTS #
Appointment.destroy_all
puts 'Creating "Appointments"...'

# ****************************************************************************************************************************************************************************************************************************************************************************************************************************************************************************************************** #

# REVIEWS #
Review.destroy_all
puts 'Creating "Reviews"...'

## service1 ##
review1 = Review.create!(
  title: "Great service all around!!",
  service: service1,
  user: jean,
  rating: 5,
  content: "My experience was wonderful with Canaduh! I would be lost without Mikael Merle. He was extremely helpful and I got exactly what I needed. 5 stars and will continue on my journey!"
)
review2 = Review.create!(
  title: "What an incredible experience",
  service: service1,
  user: mariepier,
  rating: 5,
  content: "Canaduh has completely surpassed my expectations. Mickael was really helpfully and Canaduh made the process very useful and stressful-free. Thank You Mickael!"
)
review3 = Review.create!(
  title: "Time saver for sure",
  service: service1,
  user: sarah,
  rating: 5,
  content: "I used Canduh for my Citizenship application and I wish I had used Canaduh for my Permanent Residency application. Mickael was really involved and his planner is a gem!"
)
review4 = Review.create!(
  title: "5 stars!",
  service: service1,
  user: pablo,
  rating: 5,
  content: "With Mickael nothing is impossible! Thank you so much for your help. Highly recommend to start with a General Consultation so you kick start your journey on the right path!"
)
review5 = Review.create!(
  title: "Great service!!",
  service: service1,
  user: jackie,
  rating: 5,
  content: "My experience was wonderful with Canaduh! Mickael was extremely helpful and I got exactly what I needed. 5 stars and will continue on my journey!"
)
review6 = Review.create!(
  title: "Recommended!!",
  service: service1,
  user: harry,
  rating: 5,
  content: "With Mickael I got my PR in only 9 months!"
)

# ****************************************************************************************************************************************************************************************************************************************************************************************************************************************************************************************************** #

# TASKS #
Task.destroy_all
puts 'Creating "Tasks"...'

## Recommended Tasks ##
### Belis 1 ###
recommended_task1_belis1 = Task.create!(
  user: belis1,
  task_path: belis1.path_type,
  task_name: "Valid passport or other travel documents",
  recommended_task: true,
  priority: "Low",
)
recommended_task2_belis1 = Task.create!(
  user: belis1,
  task_path: belis1.path_type,
  task_name: "Criminal record check",
  recommended_task: true,
  priority: "Low",
)
recommended_task3_belis1 = Task.create!(
  user: belis1,
  task_path: belis1.path_type,
  task_name: "Pay the fees",
  recommended_task: true,
  priority: "Low",
)
recommended_task4_belis1 = Task.create!(
  user: belis1,
  task_path: belis1.path_type,
  task_name: "Use of a Representative Form",
  recommended_task: true,
  priority: "Low",
)
recommended_task5_belis1 = Task.create!(
  user: belis1,
  task_path: belis1.path_type,
  task_name: "Civil union contract or a civil union certificate",
  recommended_task: true,
  priority: "Low",
)
recommended_task6_belis1 = Task.create!(
  user: belis1,
  task_path: belis1.path_type,
  task_name: "Academic transcripts and diplomas",
  recommended_task: true,
  priority: "Low",
)
recommended_task7_belis1 = Task.create!(
  user: belis1,
  task_path: belis1.path_type,
  task_name: "Immigration Advisor Certificate (if assisted in your application)",
  recommended_task: true,
  priority: "Low",
)
recommended_task8_belis1 = Task.create!(
  user: belis1,
  task_path: belis1.path_type,
  task_name: "Regulated work Declaration of the candidate (Form: A-0527-JF)",
  recommended_task: true,
  priority: "Low",
)
recommended_task9_belis1 = Task.create!(
  user: belis1,
  task_path: belis1.path_type,
  task_name: "Former and actual employers attestations",
  recommended_task: true,
  priority: "Low",
)
recommended_task10_belis1 = Task.create!(
  user: belis1,
  task_path: belis1.path_type,
  task_name: "Immigration Advisor Certificate (if assisted in your application)",
  recommended_task: true,
  priority: "Low",
)

# ### Belis 3 ###
recommended_task1_belis3 = Task.create!(
  user: belis3,
  task_path: belis3.path_type,
  task_name: "Up-to-date curriculum vitæ",
  recommended_task: true,
  priority: "Low",
)
recommended_task2_belis3 = Task.create!(
  user: belis3,
  task_path: belis3.path_type,
  task_name: "Reference letters from previous and current employers",
  recommended_task: true,
  priority: "Low",
)
recommended_task3_belis3 = Task.create!(
  user: belis3,
  task_path: belis3.path_type,
  task_name: "Travel documents and passports",
  recommended_task: true,
  priority: "Low",
)
recommended_task4_belis3 = Task.create!(
  user: belis3,
  task_path: belis3.path_type,
  task_name: "Schedule 4: Economic Classes",
  recommended_task: true,
  priority: "Low",
)
recommended_task5_belis3 = Task.create!(
  user: belis3,
  task_path: belis3.path_type,
  task_name: "Civil union contract or a civil union certificate",
  recommended_task: true,
  priority: "Low",
)
recommended_task6_belis3 = Task.create!(
  user: belis3,
  task_path: belis3.path_type,
  task_name: "Academic transcripts and diplomas",
  recommended_task: true,
  priority: "Low",
)
recommended_task7_belis3 = Task.create!(
  user: belis3,
  task_path: belis3.path_type,
  task_name: "Immigration Advisor Certificate (if assisted in your application)",
  recommended_task: true,
  priority: "Low",
)
recommended_task8_belis3 = Task.create!(
  user: belis3,
  task_path: belis3.path_type,
  task_name: "Regulated work Declaration of the candidate (Form: A-0527-JF)",
  recommended_task: true,
  priority: "Low",
)
recommended_task9_belis3 = Task.create!(
  user: belis3,
  task_path: belis3.path_type,
  task_name: "Former and actual employers attestations",
  recommended_task: true,
  priority: "Low",
)
recommended_task10_belis3 = Task.create!(
  user: belis3,
  task_path: belis1.path_type,
  task_name: "Immigration Advisor Certificate (if assisted in your application)",
  recommended_task: true,
  priority: "Low",
)

# ****************************************************************************************************************************************************************************************************************************************************************************************************************************************************************************************************** #

## belis1' TO DO list ##
belis1_task1 = Task.create!(
  user: belis1,
  task_name: "Meet with my Immigration Advisor",
  priority: "Low",
  task_status: true,
  recommended_task: false,
)
belis1_task2 = Task.create!(
  user: belis1,
  task_name: "Fill-out Selection Certificate Form (A-0520-AA)",
  priority: "Low",
  task_status: true,
  recommended_task: false,
)
belis1_task3 = Task.create!(
  user: belis1,
  task_name: "Ask Mom for Birth Certificate, Diplomas and Transcripts",
  priority: "Low",
  task_status: true,
  recommended_task: false,
)
belis1_task4 = Task.create!(
  user: belis1,
  task_name: "Get Work Attestation and Proof of Legalty of Work Experience",
  priority: "Low",
  task_status: true,
  recommended_task: false,
)
belis1_task5 = Task.create!(
  user: belis1,
  task_name: "Pass evaluation of French language knowledge",
  priority: "Low",
  task_status: true,
  recommended_task: false,
)
belis1_task6 = Task.create!(
  user: belis1,
  task_name: "Proof of Temporary Resident Status in Quebec",
  priority: "Low",
  task_status: true,
  recommended_task: false,
)
belis1_task7 = Task.create!(
  user: belis1,
  task_name: "Activate Temporary work visa",
  priority: "High",
  recommended_task: false,
)
belis1_task8 = Task.create!(
  user: belis1,
  task_name: "Get all PR required documents",
  priority: "High",
  recommended_task: false,
)
belis1_task9 = Task.create!(
  user: belis1,
  task_name: "Find a way to get to the border",
  priority: "High",
  recommended_task: false,
)

## belis3' TO DO list ##
belis3_task1 = Task.create!(
  user: belis3,
  task_name: "Fill-out Application Form (IMM008)",
  priority: "Low",
  task_status: true,
  recommended_task: false,
)
belis3_task2 = Task.create!(
  user: belis3,
  task_name: "Copy of Certificat de sélection du Québec",
  priority: "Low",
  task_status: true,
  recommended_task: false,
)
belis3_task3 = Task.create!(
  user: belis3,
  task_name: "Fill-out My Travels Form (IMM5562)",
  priority: "Low",
  task_status: true,
  recommended_task: false,
)
belis3_task4 = Task.create!(
  user: belis3,
  task_name: "Schedule 5: Declaration of intent to reside in Quebec",
  priority: "Low",
  task_status: true,
  recommended_task: false,
)
belis3_task5 = Task.create!(
  user: belis3,
  task_name: "Proof of language proficiency",
  priority: "low",
  task_status: true,
  recommended_task: false,
)
belis3_task6 = Task.create!(
  user: belis3,
  task_name: "2 photos",
  priority: "Low",
  task_status: true,
  recommended_task: false,
)
belis3_task7 = Task.create!(
  user: belis3,
  task_name: "Birth certificates",
  priority: "Low",
  task_status: true,
  recommended_task: false,
)
belis3_task8 = Task.create!(
  user: belis3,
  task_name: "Police certificates",
  priority: "Low",
  task_status: true,
  recommended_task: false,
)
belis3_task9 = Task.create!(
  user: belis3,
  task_name: "Pay fees",
  priority: "low",
  task_status: true,
  recommended_task: false,
)
belis3_task10 = Task.create!(
  user: belis3,
  task_name: "Send forms",
  priority: "Low",
  task_status: true,
  recommended_task: false,
)
# ****************************************************************************************************************************************************************************************************************************************************************************************************************************************************************************************************** #


### CHATROOMS ###

# ****************************************************************************************************************************************************************************************************************************************************************************************************************************************************************************************************** #

# Chatroom 1 - PR #
# chat_room = ChatRoom.create!(name: "PR Application Question")

# message_1 = Message.create!(
#   content: "Hey Canaduh Community, I need your help regarding my PR Application!
#    Mostly regarding the payment fees.",
#   chat_room: chat_room,
#   user: belis1
# )
# message_2 = Message.create!(
#   content: "Hi Belis, yes that's what our community is made for! Tell me how could I help you?",
#   chat_room: chat_room,
#   user: rmb
# )
# message_3 = Message.create!(
#   content: "Thanks Rose-Marie, ok here is the thing... On the quebec Immigration
#   Website, it says that the fees are 812$, but on the Form A0520GF_2020,
#   it's written 3243$... What's the eact solution?",
#   chat_room: chat_room,
#   user: belis1
# )
# message_4 = Message.create!(
#   content: "Ok, no trouble the right amount is 812$",
#   chat_room: chat_room,
#   user: rmb
# )
# message_5 = Message.create!(
#   content: "hi Belis, Rose-Marie is right. The 3243$ written on the document are the
#   total amount you NEED to have on your Bank Account, if Border Agents want to
#   check your informations.",
#   chat_room: chat_room,
#   user: patrick
# )
# message_6 = Message.create!(
#   content: "Thank you Rose-Marie and Patrick! Such a relief I thought that the fees
#   had been increased! Let's go PR!!! ",
#   chat_room: chat_room,
#   user: belis1
# )
# message_7 = Message.create!(
#   content: "You are welcome Belis, good luck for your process.",
#   chat_room: chat_room,
#   user: rmb
# )
# message_8 = Message.create!(
#   content: "Good luck Belis!",
#   chat_room: chat_room,
#   user: patrick
# )

# Chatroom 2 - A75 #
# chat_room = ChatRoom.create!(name: "A75 Work Permit Application Question")

# message_1 = Message.create!(
#   content: "Hey Canaduh Community, I need your help regarding my A75 Work Permit Activation!
#   Is there a possibility to do it Online? or is it best to go to the border for a Flagpole?",
#   chat_room: chat_room,
#   user: belis1
# )
# message_2 = Message.create!(
#   content: "Hi Belis, regarding your options to activite your A75 you can use both.
#   But just for you to know, the online process might take up to 3 months.
#   Also, going to the border doesn't assure you neither to receive your documents
#   if the Border Agent doesn't want to.",
#   chat_room: chat_room,
#   user: mariepier
# )
# message_3 = Message.create!(
#   content: "mmmm.... ok I'm going to start with going for a flagpole then.
#   Bc if I remember well, while waiting my permit I can't leave Canada right?",
#   chat_room: chat_room,
#   user: belis1
# )
# message_4 = Message.create!(
#   content: "You are right Belis, activiting your document online will create a
#   - pending situation - and you won't be able to leave Canada until you receive your permit.",
#   chat_room: chat_room,
#   user: mariepier
# )
# message_5 = Message.create!(
#   content: "ok, thank you very much for your time and comments Mariepier",
#   chat_room: chat_room,
#   user: belis1
# )

# Chatroom 3 - CSQ #
# chat_room = ChatRoom.create!(name: "CSQ Application Question")

# message_1 = Message.create!(
#   content: "Hey Canaduh Community, I got a question on my CSQ Application and
#   the total time worked/week! Anyone to help me?",
#   chat_room: chat_room,
#   user: belis1
# )
# message_2 = Message.create!(
#   content: "Hi Belis and Welcome to Canaduh! Of course, wht's your exact question?",
#   chat_room: chat_room,
#   user: brad
# )
# message_3 = Message.create!(
#   content: "Hey Brad, thanks for your time. I was wondering when I have a
#   payslip of 28h but in this week had a public holiday of 7h. May I had that
#   payslip in the total weeks for the CSQ?",
#   chat_room: chat_room,
#   user: belis1
# )
# message_4 = Message.create!(
#   content: "Yes, whenever you had a paid holiday, public holiday, you can add
#   them in the total/week, meaning you have one week more with 30h+",
#   chat_room: chat_room,
#   user: brad
# )
# message_5 = Message.create!(
#   content: "So great, I got the 52 weeks total to apply to the CSQ right now!
#   thank you so much Brad for your help, really appreciated :)",
#   chat_room: chat_room,
#   user: belis1
# )


# ****************************************************************************************************************************************************************************************************************************************************************************************************************************************************************************************************** #

# MILESTONE #

## Belis 1 ##
belis1_milestone1 = Milestone.create!(
  user: belis1,
  milestone_title: "CSQ Application",
  milestone_path: belis1.path_type,
  milestone_date: "2019-01-01 12:00:00",
  achieved: true,
  order: 1,
)
belis1_milestone2 = Milestone.create!(
  user: belis1,
  milestone_title: "CSQ Reception",
  milestone_path: belis1.path_type,
  order: 2,
)
belis1_milestone3 = Milestone.create!(
  user: belis1,
  milestone_title: "Temporary Work Visa Activation",
  milestone_path: belis1.path_type,
  order: 3,
)
belis1_milestone4 = Milestone.create!(
  user: belis1,
  milestone_title:  "PR Application",
  milestone_path: belis1.path_type,
  order: 4,
)
belis1_milestone5 = Milestone.create!(
  user: belis1,
  milestone_title: "PR Application Receipt Confirmation",
  milestone_path: belis1.path_type,
  order: 5,
)
belis1_milestone6 = Milestone.create!(
  user: belis1,
  milestone_title: "Medical Exam",
  milestone_path: belis1.path_type,
  order: 6,
)
belis1_milestone7 = Milestone.create!(
  user: belis1,
  milestone_title: "PR Reception",
  milestone_path: belis1.path_type,
  order: 7,
)

## belis3 ##
@belis3_milestone1 = Milestone.create!(
  user: belis3,
  milestone_title: "CSQ Application",
  milestone_path: belis3.path_type,
  milestone_date: "2019-01-01 12:00:00",
  achieved: true,
  order: 1,
)

@belis3_milestone2 = Milestone.create!(
  user: belis3,
  milestone_title: "CSQ Reception",
  milestone_path: belis3.path_type,
  milestone_date: "2019-02-01 12:00:00",
  achieved: true,
  processing_time: 1,
  order: 2,
)
@belis3_milestone3 = Milestone.create!(
  user: belis3,
  milestone_title: "Temporary Work Visa Activation",
  milestone_path: belis3.path_type,
  milestone_date: "2019-02-07 12:00:00",
  achieved: true,
  order: 3,
)
@belis3_milestone4 = Milestone.create!(
  user: belis3,
  milestone_title:  "PR Application",
  milestone_path: belis3.path_type,
  milestone_date: "2019-03-01 12:00:00",
  achieved: true,
  order: 4,
)
@belis3_milestone5 = Milestone.create!(
  user: belis3,
  milestone_title: "PR Application Receipt Confirmation",
  milestone_path: belis3.path_type,
  milestone_date: "2019-06-01 12:00:00",
  achieved: true,
  processing_time: 3,
  order: 5,
)
@belis3_milestone6 = Milestone.create!(
  user: belis3,
  milestone_title: "Medical Exam",
  milestone_path: belis3.path_type,
  milestone_date: "2020-01-01 12:00:00",
  achieved: true,
  processing_time: 7,
  order: 6,
)
@belis3_milestone7 = Milestone.create!(
  user: belis3,
  milestone_title: "PR Reception",
  milestone_path: belis3.path_type,
  order: 7,
)

# DB Milstones #
## jean ##
jean_milestone1 = Milestone.create!(
  user: jean,
  milestone_title: "CSQ Application",
  milestone_path: jean.path_type,
  milestone_date: "2019-01-01 12:00:00",
  achieved: true,
  order: 1,
)
jean_milestone2 = Milestone.create!(
  user: jean,
  milestone_title: "CSQ Reception",
  milestone_path: jean.path_type,
  milestone_date: "2019-04-01 12:00:00",
  achieved: true,
  processing_time: 4,
  order: 2,
)
jean_milestone3 = Milestone.create!(
  user: jean,
  milestone_title: "Temporary Work Visa Activation",
  milestone_path: jean.path_type,
  milestone_date: "2019-02-07 12:00:00",
  achieved: true,
  order: 3,
)
jean_milestone4 = Milestone.create!(
  user: jean,
  milestone_title:  "PR Application",
  milestone_path: jean.path_type,
  milestone_date: "2019-03-01 12:00:00",
  achieved: true,
  order: 4,
)
jean_milestone5 = Milestone.create!(
  user: jean,
  milestone_title: "PR Application Receipt Confirmation",
  milestone_path: jean.path_type,
  milestone_date: "2019-06-01 12:00:00",
  achieved: true,
  processing_time: 3,
  order: 5,
)
jean_milestone6 = Milestone.create!(
  user: jean,
  milestone_title: "Medical Exam",
  milestone_path: jean.path_type,
  milestone_date: "2020-01-01 12:00:00",
  achieved: true,
  processing_time: 7,
  order: 6,
)
jean_milestone7 = Milestone.create!(
  user: jean,
  milestone_title: "PR Reception",
  milestone_path: jean.path_type,
  milestone_date: "2020-04-04 12:00:00",
  achieved: true,
  processing_time: 3,
  order: 7,
)
## mariepier ##
mariepier_milestone1 = Milestone.create!(
  user: mariepier,
  milestone_title: "CSQ Application",
  milestone_path: mariepier.path_type,
  milestone_date: "2019-01-01 12:00:00",
  achieved: true,
  order: 1,
)
mariepier_milestone2 = Milestone.create!(
  user: mariepier,
  milestone_title: "CSQ Reception",
  milestone_path: mariepier.path_type,
  milestone_date: "2019-04-01 12:00:00",
  achieved: true,
  processing_time: 4,
  order: 2,
)
mariepier_milestone3 = Milestone.create!(
  user: mariepier,
  milestone_title: "Temporary Work Visa Activation",
  milestone_path: mariepier.path_type,
  milestone_date: "2019-02-07 12:00:00",
  achieved: true,
  order: 3,
)
mariepier_milestone4 = Milestone.create!(
  user: mariepier,
  milestone_title:  "PR Application",
  milestone_path: mariepier.path_type,
  milestone_date: "2019-03-01 12:00:00",
  achieved: true,
  order: 4,
)
mariepier_milestone5 = Milestone.create!(
  user: mariepier,
  milestone_title: "PR Application Receipt Confirmation",
  milestone_path: mariepier.path_type,
  milestone_date: "2019-06-01 12:00:00",
  achieved: true,
  processing_time: 3,
  order: 5,
)
mariepier_milestone6 = Milestone.create!(
  user: mariepier,
  milestone_title: "Medical Exam",
  milestone_path: mariepier.path_type,
  milestone_date: "2020-01-01 12:00:00",
  achieved: true,
  processing_time: 7,
  order: 6,
)
mariepier_milestone7 = Milestone.create!(
  user: mariepier,
  milestone_title: "PR Reception",
  milestone_path: mariepier.path_type,
  milestone_date: "2020-04-04 12:00:00",
  achieved: true,
  processing_time: 3,
  order: 7,
)

puts 'Finished!'
