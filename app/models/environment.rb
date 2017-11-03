class Environment < ApplicationRecord
  has_many :projects, dependent: :destroy
  has_many :servers, dependent: :destroy
  accepts_nested_attributes_for :servers
end
