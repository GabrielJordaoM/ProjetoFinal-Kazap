# frozen_string_literal: true
require 'uuid'
class Client < Sequel::Model
    plugin :validation_helpers
    one_to_many :accounts
    def validate
        super
        validates_presence [:name, :document, :adress, :phone] 
        validates_unique :document
    end

    def before_create
        self.client_id ||= UUID.new.generate
        super
      end
end
