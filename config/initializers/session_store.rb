# Be sure to restart your server when you modify this file.

# Your secret key for verifying cookie session data integrity.
# If you change this key, all old sessions will become invalid!
# Make sure the secret is at least 30 characters and all random, 
# no regular words or you'll be exposed to dictionary attacks.
ActionController::Base.session = {
  :key         => '_igadnet_session',
  :secret      => 'bec15469be6bc88ce41f66a7ca8bbf7b6745c46dc936a12b58ea2e008f52895b75bc0b4b1108d6dbc63133245e18963fa11d37231a7efae72f0b5bad239a05c3'
}

# Use the database for sessions instead of the cookie-based default,
# which shouldn't be used to store highly confidential information
# (create the session table with "rake db:sessions:create")
# ActionController::Base.session_store = :active_record_store
