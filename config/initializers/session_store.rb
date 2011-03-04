# Be sure to restart your server when you modify this file.

# Your secret key for verifying cookie session data integrity.
# If you change this key, all old sessions will become invalid!
# Make sure the secret is at least 30 characters and all random, 
# no regular words or you'll be exposed to dictionary attacks.
ActionController::Base.session = {
  :key         => '_discopatia_session',
  :secret      => 'cf9021d0c94de9551a9535bfede32aed79b728a14e46bde550f923a0031a70d3b63c97d16a9480ea1e19ebb5f7bd637442682d2a0aca88af46699831934d0ee0'
}

# Use the database for sessions instead of the cookie-based default,
# which shouldn't be used to store highly confidential information
# (create the session table with "rake db:sessions:create")
# ActionController::Base.session_store = :active_record_store
