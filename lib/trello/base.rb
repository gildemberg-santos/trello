# frozen_string_literal: true

module Trello
  def self.validate_payload(payload = nil)
    return nil if payload.is_a?(NilClass)

    raise Trello::InvalidPayloadError, "Payload must be a Hash '#{payload.class}'" unless payload.is_a?(Hash)
    raise Trello::InvalidPayloadError, "Payload is required" if payload.blank?

    payload
  end

  def self.validade_uri(url)
    raise Trello::InvalidURIError, "Url is must be a String '#{url.class}'" unless url.is_a?(String)

    uri ||= URI.parse(url)
    raise Trello::InvalidURIError, "Url is invalid '#{url}'" if uri.host.blank?

    uri
  rescue URI::InvalidURIError => error_uri
    raise Trello::InvalidURIError, error_uri.message
  end

  def self.validade_key(token)
    raise Trello::InvalidTokenError, "Token must be a String '#{token.class}'" unless token.is_a?(String)
    raise Trello::InvalidTokenError, "Token is required" if token.blank?
    raise Trello::InvalidTokenError, "Token is invalid '#{token}'" unless token.match?(/[A-Za-z0-9]{72}/)

    token
  end

  def self.validade_token(token)
    raise Trello::InvalidTokenError, "Token must be a String '#{token.class}'" unless token.is_a?(String)
    raise Trello::InvalidTokenError, "Token is required" if token.blank?
    raise Trello::InvalidTokenError, "Token is invalid '#{token}'" unless token.match?(/[A-Za-z0-9]{72}/)

    token
  end
end
