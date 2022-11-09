class Product < ApplicationRecord
  has_many :lineitems, dependent: :destroy
  belongs_to :user
end
