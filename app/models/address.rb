class Address < ActiveRecord::Base
  belongs_to :order

  validates :name, :surname, :zip_code, :street, :email, :city, presence: true
end
