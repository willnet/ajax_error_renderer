require "ajax_error_renderer/engine"

module AjaxErrorRenderer
  def render_ajax_error(location: '#error', model:)
    @location = location
    @model = model
    render 'ajax_errors/error', formats: :js
  end
end
