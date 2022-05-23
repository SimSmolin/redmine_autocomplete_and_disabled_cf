require_dependency 'custom_field'

module CustomFieldPatch
  def self.included(base) # :nodoc:
    base.send(:include, InstanceMethods)

    base.class_eval do
      safe_attributes :readonly_after, :readonly_always, :readonly_include_administrator, :custom_action
    end
  end

  module InstanceMethods
    def readonly_include_administrator?
      readonly_include_administrator == '1'
    end

    def readonly_after?
      readonly_after == '1'
    end

    def readonly_always?
      readonly_always == '1'
    end
  end

  CustomField.send :include, CustomFieldPatch
end