class Environment < ApplicationRecord
  belongs_to :project
  has_many  :servers, dependent: :destroy
end
