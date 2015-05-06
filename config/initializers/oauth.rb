# Load libraries required by the Evernote OAuth
require 'oauth'
require 'oauth/consumer'

# Load Thrift & Evernote Ruby libraries
require "evernote_oauth"

# Client credentials
OAUTH_CONSUMER_KEY = "tanostap"
OAUTH_CONSUMER_SECRET = "46723069aba31748"

# Connect to Sandbox server?
SANDBOX = true

EVERNOTE_CONFIG = YAML.load(ERB.new(File.read('config/evernote.yml')).result)[Rails.env]
site = EVERNOTE_CONFIG['sandbox'] ? 'https://sandbox.evernote.com' : 'https://www.evernote.com'

Rails.application.config.middleware.use OmniAuth::Builder do
  provider :evernote, EVERNOTE_CONFIG['consumer_key'], EVERNOTE_CONFIG['consumer_secret'], :client_options => {:site => site}
end

OmniAuth.config.on_failure = LoginController.action(:oauth_failure)