class Project < ApplicationRecord
  has_many :environments
  accepts_nested_attributes_for :environments,
                                reject_if: lambda { |attrs| attrs['environment'].blank? }
end
