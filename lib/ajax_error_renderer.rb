require "ajax_error_renderer/engine"

module AjaxErrorRenderer
  private

  def render_ajax_error(location: '#error', model:, status: 422, move: true)
    @location = location
    @model = model
    @move = move
    render 'ajax_errors/error', formats: :js, status: status
  end
end
