# Be sure to restart your server when you modify this file.

# Your secret key is used for verifying the integrity of signed cookies.
# If you change this key, all old signed cookies will become invalid!

# Make sure the secret is at least 30 characters and all random,
# no regular words or you'll be exposed to dictionary attacks.
# You can use `rake secret` to generate a secure secret key.

# Make sure your secret_key_base is kept private
# if you're sharing your code publicly.
Art::Application.config.secret_key_base = '848aad00b9501ddb16b1494088cba53efe22a0d5c373f587b1e9ef6ba4a88a0e0f8f827d0ac531a3bed94436adf0c6e992e31755f2344e753bc009c6c13462f0'

#require 'securerandom'

#def secure_token
#  token_file = Rails.root.join('.secret')
#  if File.exist?(token_file)
#    # Use the existing token.
#    File.read(token_file).chomp
#  else
#    # Generate a new token and store it in token_file.
#    token = SecureRandom.hex(64)
#    File.write(token_file, token)
#    token
#  end
#end

#SampleApp::Application.config.secret_key_base = secure_token

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

Art::Application.config.secret_key_base = secure_token