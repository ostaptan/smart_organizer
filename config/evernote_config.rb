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