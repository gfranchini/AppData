class Project < ApplicationRecord
  has_many :environments
  has_many :servers, through: :environments, dependent: :destroy
  accepts_nested_attributes_for :servers
end
