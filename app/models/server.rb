class Server < ApplicationRecord
  belongs_to :environment
  validates :ip, ipaddr: true
end
