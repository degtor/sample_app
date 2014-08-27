# Be sure to restart your server when you modify this file.

# Your secret key is used for verifying the integrity of signed cookies.
# If you change this key, all old signed cookies will become invalid!

# Make sure the secret is at least 30 characters and all random,
# no regular words or you'll be exposed to dictionary attacks.
# You can use `rake secret` to generate a secure secret key.

# Make sure your secret_key_base is kept private
# if you're sharing your code publicly.
<<<<<<< HEAD
require 'securerandom'

def secure_token
  token_file = Rails.root.join('.secret')
  if File.exist?(token_file)
    # Use the existing token.
    File.read(token_file).chomp
  else
    # Generate a new token and store it in token_file.
    token = SecureRandom.hex(64)
    File.write(token_file, token)
    token
  end
end

SampleApp::Application.config.secret_key_base = secure_token
=======
FirstApp::Application.config.secret_key_base = 'bbc7911cc855f9daf3026d6dc1e93a62e9ca7458c7a8f550dfa335d9bb27be4eda28244921d686f0309689b8a0025962d9ba25b8856f9310c92f29d55caabebf'
>>>>>>> 1303521e657ef04a7f9fbc515e3475fc4aba6d3f
