class Environment < ApplicationRecord
  belongs_to :project
  has_many :servers
  accepts_nested_attributes_for :servers

  def self.env_validator(project_envs)
    environments = ['Dev', 'QA', 'Production', 'Staging', 'Test']
    collector = []

    project_envs.map(&:attributes).each do |x|
       collector.push(x['name'])
    end

    return collector - environments | environments - collector
    # array = project_envs.map { |r| r.attributes.symbolize_keys }
  end


end
