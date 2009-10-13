# Be sure to restart your server when you modify this file.

# Your secret key for verifying cookie session data integrity.
# If you change this key, all old sessions will become invalid!
# Make sure the secret is at least 30 characters and all random, 
# no regular words or you'll be exposed to dictionary attacks.
ActionController::Base.session = {
  :key         => '_flitten_session',
  :secret      => '6e7e5269bc28f617017e0ee31a691d68e449fb0bea0961c89b1f5a352ccb3052b44ab397e19396902ac61e61720cffd4c9139bdb2aa53569f5a1535d99cd3e19'
}

# Use the database for sessions instead of the cookie-based default,
# which shouldn't be used to store highly confidential information
# (create the session table with "rake db:sessions:create")
# ActionController::Base.session_store = :active_record_store
