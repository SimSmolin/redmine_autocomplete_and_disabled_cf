class ViewListenerPlugin < Redmine::Hook::ViewListener
	def view_custom_fields_form_upper_box (context = {})
		begin
			partial =  "custom_fields/formats/_#{context[:custom_field][:field_format]}"
			context[:hook_caller].render :partial => partial, :locals => {:f => context[:form], :custom_field => context[:custom_field] }
		rescue => e
			e.message
		end
	end
end
