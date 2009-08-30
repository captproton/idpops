# Be sure to restart your server when you modify this file.

# Your secret key for verifying cookie session data integrity.
# If you change this key, all old sessions will become invalid!
# Make sure the secret is at least 30 characters and all random, 
# no regular words or you'll be exposed to dictionary attacks.
ActionController::Base.session = {
  :key         => '_authlogicopenid_session',
  :secret      => 'a519e22fdc6710c34f480aa05e1fdb6803c09598a3b3fb959ae6b3a06cc4871e0e58873fa44a2da57823078a5e02f9ee2c5f9ebf2e459d188e3cb1b616d11722'
}

# Use the database for sessions instead of the cookie-based default,
# which shouldn't be used to store highly confidential information
# (create the session table with "rake db:sessions:create")
# ActionController::Base.session_store = :active_record_store
