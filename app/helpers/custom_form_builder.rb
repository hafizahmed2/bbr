class CustomFormBuilder < ActionView::Helpers::FormBuilder
  delegate :content_tag, :tag, to: :@template

  def bbr_text_field(method, label_text, options = {})
    content_tag :div, class: 'field-control card-control-width' do
      field_label(method, label_text) +
      @template.text_field( @object_name, method, objectify_options(options))
    end
  end

  def bbr_email_field(method, label_text, options = {})
    content_tag :div, class: 'field-control card-control-width' do
      field_label(method, label_text) +
      @template.email_field( @object_name, method, objectify_options(options))
    end
  end

  def bbr_text_area(method, label_text, options = {})
    content_tag :div, class: 'field-control width-full' do
      field_label(method, label_text) +
      @template.text_area( @object_name, method, objectify_options(options))
    end
  end

  def bbr_submit(label_text, options = {})
    @template.submit_tag(label_text, options)
  end

  private

  def field_label(method, label_text)
    @template.label( :method, label_text, class: 'input-label')
  end
end
