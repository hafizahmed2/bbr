class FeedbacksBaseController < ApplicationController
  before_action :load_resource, only: [:new, :create]

  def initialize(class_name, permitted_params_list)
    super()
    @resource_class = class_name
    @permitted_params = permitted_params_list
  end

  def create
    respond_to do |format|
      @success = @resouce_object.save

      if @success
        @resouce_object = @resource_class.new
        format.html {redirect_to(root_path)}
        format.js
      else
        format.html {render :new}
        format.js
      end
    end
  end

  private

  def load_resource
    @resouce_object ||= request.post? ? @resource_class.new(resource_permitted_params) : @resource_class.new
  end

  def resource_permitted_params
    params.require(@resource_class.name.underscore.to_sym).permit(@permitted_params)
  end
end
