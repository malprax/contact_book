# This file should contain all the record creation needed to seed the database with its default values.
# The data can then be loaded with the rake db:seed (or created alongside the db with db:setup).
#
# Examples:
#
#   cities = City.create([{ name: 'Chicago' }, { name: 'Copenhagen' }])
#   Mayor.create(name: 'Emanuel', city: cities.first)

pages = Page.create([ 
  
   {name: 'programs', input_text: 'welcome to programs', slug:'programs', parent_id: ''},
  {name: 'curriculum', input_text: 'welcome to curriculum page', slug:'curriculum', parent_id: ''},
   {name: 'campus', input_text: 'welcome to our campus', slug:'our_campus',  parent_id: ''},
   {name: 'about', input_text: 'welcome to about_uspage', slug:'about', parent_id: ''},
  {name: 'language support', input_text: 'welcome to language_support page', slug:'language_support', parent_id: '1'},
  {name: 'learning support for special need', input_text: 'welcome to learning support_for_special_need', slug:'learning_support_for_special_need', parent_id: '1'},
  {name: 'student welfare program', input_text: 'student welfare program', slug:'student_welfare_program', parent_id: '1'},
  {name: 'excursion / fieldtrip', input_text: 'welcome to excursion', slug:'excursion_or_fieldtrip', parent_id: '1'},
  {name: 'extracurricular activity', input_text: 'extracurricular activity', slug:'extracurricular_activity', parent_id: '1'},
  {name: 'anti-bullying program', input_text: 'anti-bullying program_page', slug:'anti_bullying_program', parent_id: '1'},
  {name: 'islamic_studies', input_text: 'islamic_studies', slug:'islamic_studies', parent_id: '1'},
   {name: 'quran', input_text: 'welcome to quran dan doa page', slug:'quran', parent_id: '1/11'},  
  {name: 'akhlakul karimah', input_text: 'welcome to akhlakul karimah page', slug:'akhlakul_karimah', parent_id: '1/11'},
  {name: 'sholat dan doa', input_text: 'welcome to sholat dan doa page', slug:'sholat_dan_doa', parent_id: '1/11'}, 
   
  {name: 'pre-school', input_text: 'welcome to pre-school page', slug:'pre_school', parent_id: '2'},
  {name: 'primary school', input_text: 'welcome to primary_school_page', slug:'primary_school', parent_id: '2'},
  {name: 'head of school welcome',  input_text: 'welcome to head_of_school_welcome',slug:'head_of_school_welcome', parent_id: '3'},                    
  {name: 'facilities', input_text: 'facilities page', slug:'facilities', parent_id: '3'},
  {name: 'our staff', input_text: 'welcome to our_staff page', slug:'our_staff', parent_id: '3'},
  {name: 'our philosophy', input_text: 'head of our philosophy', slug:'our_philosophy', parent_id: '4'},
  {name: 'vision and mission', input_text: 'vision and mission', slug:'vision_and_mission', parent_id: '4'},
  {name: 'founder message', input_text: 'founder_message page', slug:'founder_message', parent_id: '4'},
  {name: 'high quality education', input_text: 'welcome to high quality education page', slug:'high_quality_education', parent_id: '4'},
  {name: 'right and responsibility', input_text: 'welcome to right and responsibility', slug:'right_and_responsibility', parent_id: '4'},
 
  ])

  users= User.create([
    {email: "kingmalprax@gmail.com", password:"asdfghjkl", password_confirmation:"asdfghjkl"},
    {email: "abubay12@gmail.com", password:"asdfghjkl", password_confirmation:"asdfghjkl"}
    ])