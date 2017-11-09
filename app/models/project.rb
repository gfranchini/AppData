class Project < ApplicationRecord
  has_many :environments
  has_many :servers, through: :environments, dependent: :destroy
  has_many :load_balancers, through: :environments, dependent: :destroy
  accepts_nested_attributes_for :servers
  accepts_nested_attributes_for :environments
end
