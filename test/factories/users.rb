Factory.sequence :username do |n|
  "user#{n}"
end
 
Factory.sequence :email do |n|
  "user#{n}@example.com"
end
 
Factory.define :user, :class => 'user' do |u|
  u.username { Factory.next(:username) }
  u.email { Factory.next(:email) }
  u.password '1qaz2wsx'
  u.password_confirmation {|u| u.password }
  u.association :invitation
end
