module RedmineFieldFormatPath
  def self.included(base) # :nodoc:
    base.send(:include, InstanceMethods)

    base.class_eval do
      unloadable
      field_attributes :readonly_after, :readonly_always, :readonly_include_administrator, :custom_action

    end
  end

  module InstanceMethods
  end

  Redmine::FieldFormat::Base.send :include, RedmineFieldFormatPath
end
