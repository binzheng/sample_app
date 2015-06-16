<<<<<<< HEAD
# Be sure to restart your server when you modify this file.

Rails.application.config.session_store :cookie_store, key: '_sample_app_session'
=======
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
>>>>>>> 9ec51b2c511d1b9082c52ece21220f38aa1e9f5e
