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
          return "<div class=\"custom_field\"><i class=\"boolean_true\"></i><span>#{l(:general_text_Yes)}</span></div>".html_safe
        else
          return "<div class=\"custom_field\"><i class=\"boolean_false\"></i><span>#{l(:general_text_No)}</span></div>".html_safe
        end
      end
      
    end
  end
end