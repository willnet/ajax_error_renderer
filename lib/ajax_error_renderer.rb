require "ajax_error_renderer/engine"

module AjaxErrorRenderer
  def render_ajax_error(location: '#error', model:, status: 422)
    @location = location
    @model = model
    render 'ajax_errors/error', formats: :js, status: status
  end
end
