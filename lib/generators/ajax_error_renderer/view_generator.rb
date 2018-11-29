module AjaxErrorRenderer
  class ViewGenerator < Rails::Generators::Base
    source_root File.expand_path('templates', __dir__)

    def copy_view_file
      directory = Rails.root.join('app', 'views', 'ajax_errors').to_s
      Dir.mkdir(directory) unless Dir.exist?(directory)
      copy_file 'error.html.erb', File.join(directory, '_error.html.erb')
    end
  end
end
