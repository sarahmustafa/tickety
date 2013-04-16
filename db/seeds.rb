# This file should contain all the record creation needed to seed the database with its default values.
# The data can then be loaded with the rake db:seed (or created alongside the db with db:setup).
#
# Examples:
#
#   cities = City.create([{ name: 'Chicago' }, { name: 'Copenhagen' }])
#   Mayor.create(name: 'Emanuel', city: cities.first)

User.create(username: "sarahmustafa", email: "sarahmustafa93@gmail.com", crypted_password: "$2a$10$Dhy874RxE0fP7h.wbh8iNOoLWVgY/mZxt5EAuS1Tn6cS...", salt: "fDpjXEam2FfyDDts5mNc", name: "Sarah", is_customer: nil, is_admin: true, is_manager: nil, reward_points: nil, billing_address: "", creditcard_num: nil, creditcard_type: "", security_num: nil, created_at: "2013-03-05 08:06:02", updated_at: "2013-03-05 08:06:02", reset_password_token: nil, reset_password_token_expires_at: nil, reset_password_email_sent_at: nil)
