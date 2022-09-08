# frozen_string_literal: true

module Trello
  class Error < StandardError; end
  class InvalidURIError < StandardError; end
  class JsonParseError < StandardError; end
  class InvalidPayloadError < StandardError; end
  class InvalidKeyError < StandardError; end
  class InvalidTokenError < StandardError; end
end
