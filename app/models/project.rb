class Project < ApplicationRecord
  has_many :environments
  has_many :servers, through: :environments, dependent: :destroy
  has_many :load_balancers, through: :environments, dependent: :destroy
  validates :name, presence: true
end
