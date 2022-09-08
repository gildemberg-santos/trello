# frozen_string_literal: true

module Trello
  class Request
    def initialize(url:, key:, token:)
      @url = url
      @key = key
      @token = token
    end

    def get; end

    def post; end

    def put; end

    def delete; end

    def json; end

    def status_code; end

    private

    def requisition_settings(method: :post, payload: nil); end

    def execute_request(method: :post, payload: nil); end
  end
end
