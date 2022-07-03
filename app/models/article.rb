class Article < ApplicationRecord
  belongs_to :service
  belongs_to :customer
  belongs_to :provider
end
