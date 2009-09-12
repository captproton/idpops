Factory.define :invitation do |f|
  f.association :sender, :factory => :user
  f.sequence(:recipient_email) { |n| "jose#{n}@plugnplay.com"  }
  f.sequence(:email) { |n| "foo#{n}@example.com" }
  f.association :user
end
