# encoding: utf-8
require 'redmine'
require 'dispatcher'

Dispatcher.to_prepare :chiliproject_add_html_class_to_boolean_custom_fields do
  Redmine::CustomFieldFormat.send(:include, AddHtmlClassToBooleanCustomFields::Patches::CustomFieldFormatPatch)
end

Redmine::Plugin.register :chiliproject_add_html_class_to_boolean_custom_fields do
  name 'Chiliproject Add Html Class To Boolean Custom Fields plugin'
  author 'Francisco de Juan'
  description 'This is a plugin for ChiliProject adds boolean-true or boolean-false css selectors to rendered custom boolean fields'
  version '0.0.2'
  url 'http://github.com/splendeo/chiliproject_add_html_class_to_boolean_custom_fields'
  author_url 'http://www.splendeo.es'
end
