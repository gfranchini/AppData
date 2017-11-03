class Project < ApplicationRecord
  belongs_to :environment
  has_many :servers, dependent: :destroy
  accepts_nested_attributes_for :servers
  # accepts_nested_attributes_for :environments,
  #                               allow_destroy: true,
  #                               reject_if: lambda { |attrs| attrs['environment'].blank? }
end
