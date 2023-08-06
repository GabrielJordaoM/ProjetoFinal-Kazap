# frozen_string_literal: true
require 'uuid'
class Transfers < Sequel::Model
  plugin :validation_helpers
  many_to_one :from_account, class: :Account, key: :from_id
  many_to_one :to_account, class: :Account, key: :to_id
    def validate
        super
        validates_presence [:money, :from_id, :to_id, :type]
    end

  def before_create
    self.transfer_id ||= UUID.new.generate
    super
  end
end
