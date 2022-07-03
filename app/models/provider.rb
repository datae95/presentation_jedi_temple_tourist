class Provider < ApplicationRecord
  has_and_belongs_to_many :services

  def providable_services = Service.all - services
end
