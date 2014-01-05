# This file should contain all the record creation needed to seed the database with its default values.
# The data can then be loaded with the rake db:seed (or created alongside the db with db:setup).
#
# Examples:
#
#   cities = City.create([{ name: 'Chicago' }, { name: 'Copenhagen' }])
#   Mayor.create(name: 'Emanuel', city: cities.first)

pages = Page.create([
  {name: 'about', input_text: 'welcome to about_page', slug:'about' },
  {name: 'education', input_text: 'welcome to education_page', slug:'education'},
  {name: 'info', input_text: 'welcome to info_page', slug:'info'},
  {name: 'contact us', input_text: 'welcome to contact_us_page', slug:'contact_us'},
  {name: 'kb (kelompok bermain)', input_text: 'welcome to kelompok bermain page', slug:'kelompok_bermain', ancestry: '2'},
  {name: 'tk (taman kanak-kanak)', input_text: 'welcome to taman kanak-kanak page', slug:'taman_kanak_kanak', ancestry: '2'},
  {name: 'sd (sekolah dasar)', input_text: 'welcome to sekolah dasar page', slug:'sekolah_dasar', ancestry: '2'},
  {name: 'kurikulum', input_text: 'welcome to kurikulum kb page', slug:'kurikulum_kb', ancestry: '2/5'},
  {name: 'kurikulum', input_text: 'welcome to kurikulum tk page', slug:'kurikulum_tk', ancestry: '2/6'},
  {name: 'kurikulum', input_text: 'welcome to kurikulum sd page', slug:'kurikulum_sd', ancestry: '2/7'},
  {name: 'program', input_text: 'welcome to program page', slug:'program', ancestry: '1'},
  {name: 'history', input_text: 'welcome to history page', slug:'history', ancestry: '1'},
  {name: 'kalender', input_text: 'welcome to kalender kb page', slug:'kalender_kb', ancestry: '2/5'},
  {name: 'kalender', input_text: 'welcome to kalender tk page', slug:'kalender_tk', ancestry: '2/6'},
  {name: 'kalender', input_text: 'welcome to kalender sd page', slug:'kalender_sd', ancestry: '2/7'},
  ])

  users= User.create([
    {email: "kingmalprax@gmail.com", password:"asdfghjkl", password_confirmation:"asdfghjkl"},
    {email: "abubay12@gmail.com", password:"asdfghjkl", password_confirmation:"asdfghjkl"}
    ])