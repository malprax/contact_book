# This file should contain all the record creation needed to seed the database with its default values.
# The data can then be loaded with the rake db:seed (or created alongside the db with db:setup).
#
# Examples:
#
#   cities = City.create([{ name: 'Chicago' }, { name: 'Copenhagen' }])
#   Mayor.create(name: 'Emanuel', city: cities.first)

pages = Page.create([ 
  
   {name: 'programs', input_text: 'welcome to programs', slug:'programs'},
  {name: 'curriculum', input_text: 'welcome to curriculum page', slug:'curriculum'},
   {name: 'campus', input_text: 'welcome to our campus', slug:'our_campus'},
   {name: 'about', input_text: 'welcome to about_uspage', slug:'about'},
  {name: 'language support', input_text: 'welcome to language_support page', slug:'language_support', ancestry: '1'},
  {name: 'learning support for special need', input_text: 'welcome to learning support_for_special_need', slug:'learning_support_for_special_need', ancestry: '1'},
  {name: 'student welfare program', input_text: 'student welfare program', slug:'student_welfare_program', ancestry: '1'},
  {name: 'excursion / fieldtrip', input_text: 'welcome to excursion', slug:'excursion_or_fieldtrip', ancestry: '1'},
  {name: 'extracurricular activity', input_text: 'extracurricular activity', slug:'extracurricular_activity', ancestry: '1'},
  {name: 'anti-bullying program', input_text: 'anti-bullying program_page', slug:'anti_bullying_program', ancestry: '1'},
  {name: 'islamic_studies', input_text: 'islamic_studies', slug:'islamic_studies', ancestry: '1'},
   {name: 'quran', input_text: 'welcome to quran dan doa page', slug:'quran', ancestry: '1/11'},  
  {name: 'akhlakul karimah', input_text: 'welcome to akhlakul karimah page', slug:'akhlakul_karimah', ancestry: '1/11'},
  {name: 'sholat dan doa', input_text: 'welcome to sholat dan doa page', slug:'sholat_dan_doa', ancestry: '1/11'}, 
   
  {name: 'pre-school', input_text: 'welcome to pre-school page', slug:'pre_school', ancestry: '2'},
  {name: 'primary school', input_text: 'welcome to primary_school_page', slug:'primary_school', ancestry: '2'},
  {name: 'head of school welcome',  input_text: 'welcome to head_of_school_welcome',slug:'head_of_school_welcome', ancestry: '3'},                    
  {name: 'facilities', input_text: 'facilities page', slug:'facilities', ancestry: '3'},
  {name: 'our staff', input_text: 'welcome to our_staff page', slug:'our_staff', ancestry: '3'},
  {name: 'our philosophy', input_text: 'head of our philosophy', slug:'our_philosophy', ancestry: '4'},
  {name: 'vision and mission', input_text: 'vision and mission', slug:'vision_and_mission', ancestry: '4'},
  {name: 'founder message', input_text: 'founder_message page', slug:'founder_message', ancestry: '4'},
  {name: 'high quality education', input_text: 'welcome to high quality education page', slug:'high_quality_education', ancestry: '4'},
  {name: 'right and responsibility', input_text: 'welcome to right and responsibility', slug:'right_and_responsibility', ancestry: '4'},
 
  ])

  users= User.create([
    {email: "kingmalprax@gmail.com", password:"asdfghjkl", password_confirmation:"asdfghjkl"},
    {email: "abubay12@gmail.com", password:"asdfghjkl", password_confirmation:"asdfghjkl"}
    ])