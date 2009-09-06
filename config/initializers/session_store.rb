# Be sure to restart your server when you modify this file.

# Your secret key for verifying cookie session data integrity.
# If you change this key, all old sessions will become invalid!
# Make sure the secret is at least 30 characters and all random, 
# no regular words or you'll be exposed to dictionary attacks.
ActionController::Base.session = {
  :key         => '_sysobras_session',
  :secret      => '8a1d4e251f63b120458863761c40e3546876c26a52ecdc136e193d45c99de66bcfb0c8d2a40a00f56fbecebaf1f623d3ff43bc3cb4e12729a5cc1f981d147e63'
}

# Use the database for sessions instead of the cookie-based default,
# which shouldn't be used to store highly confidential information
# (create the session table with "rake db:sessions:create")
# ActionController::Base.session_store = :active_record_store
