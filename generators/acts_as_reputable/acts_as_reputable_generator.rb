require 'rails/generators/active_record'

class ActsAsReputableGenerator < ActiveRecord::Generators::Base
  argument :name, :default => "migration"
  
  def generate_reputation_migration
    migration_template "migrations/create_reputations.rb", "db/migrate/create_reputations.rb"
  end
  
  def self.source_root
    File.join(File.dirname(__FILE__), "templates")
  end
end