class CustomFormBuilder < ActionView::Helpers::FormBuilder
	def from_error
		if self.objet.errors.any?
			model_name = self.object.class.model_name.human
			plural_name = self.object.class.model_name.plural
			is_new = self.object.persisted? ? 'edit' : 'new'

			@template.content_tag :div, class: 'alert alert-danger' do
			@template.content_tag :p, ("#{is_new}.form.error")
	end
end		