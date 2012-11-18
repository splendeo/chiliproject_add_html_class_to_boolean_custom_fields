module AddHtmlClassToBooleanCustomFields
  module Patches
    module CustomFieldFormatPatch
      
      def self.included(base) # :nodoc:
        base.class_eval do
          alias_method_chain :format_as_bool, :html_class
        end
      end
            
      def format_as_bool_with_html_class(value)
        if value == "1"
          return "<span class=\"boolean-true\">#{l(:general_text_Yes)}</span>".html_safe
        else
          return "<span class=\"boolean-false\">#{l(:general_text_No)}</span>".html_safe
        end
      end
      
    end
  end
end