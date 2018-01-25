class Environment < ApplicationRecord
  belongs_to :project
  has_many :servers, dependent: :destroy
  has_many :load_balancers, dependent: :destroy
  accepts_nested_attributes_for :servers, reject_if: proc { |attributes| attributes['ip'].blank? }, allow_destroy: true
  accepts_nested_attributes_for :load_balancers, allow_destroy: true

  has_attached_file :architecture, styles: { medium: "500x500>", thumb: "100x100>" }, default_url: "/images/:style/missing.png"
  
  validates_attachment :architecture,
    content_type: { content_type: ["image/jpeg", "image/gif", "image/png"] }

  def self.env_validator(project_envs)
    environments = ['Development', 'QA', 'Production', 'Staging', 'Test']
    collector = []

    project_envs.map(&:attributes).each do |x|
       collector.push(x['name'])
    end

    return collector - environments | environments - collector
  end

end
