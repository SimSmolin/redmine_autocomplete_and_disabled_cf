require_relative 'lib/view_listener_plugin'
require_relative 'lib/redmine/field_format_patch'
require_relative 'lib/custom_field_patch'

Redmine::Plugin.register :redmine_autocomplete_and_disabled_cf do
  name 'Redmine autocomplete and readonly custom field plugin'
  author 'Sergey Melnikov'
  description 'This is plugin allow readonly custom fields and autocomplete Timeenrty custom fields'
  version '0.0.1'
  url 'https://github.com/SimSmolin/redmine_autocomplete_and_readonly_cf.git'
  author_url 'https://github.com/SimSmolin'
end
