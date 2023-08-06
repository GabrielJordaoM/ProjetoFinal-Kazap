# frozen_string_literal: true
require 'uuid'
class Account < Sequel::Model
  plugin :validation_helpers
  many_to_one :customer
  one_to_many :from_transfers, class: :Transfers, key: :from_id
  one_to_many :to_transfers, class: :Transfers, key: :to_id
    def validate
        super
        validates_presence [:number, :client_id]
        validates_unique :number
    end

  def before_create
    self.account_id ||= UUID.new.generate
    super
  end
end

    

