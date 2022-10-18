class Store < ActiveRecord::Base
  has_many :employees
  validates :name, presence: true, length: {minimum: 3}
  validates :annual_revenue, numericality: {greater_than: 0}
  #Was getting error with ex2 renaming a store when method was added.
  # validate :apparel, on: :create
  # def apparel
  #   if mens_apparel.present? || womens_apparel.present?
  #     errors.add(:mens_apparel, "must carry some apperal")
  #   end
  # end
end