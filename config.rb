set :css_dir, 'stylesheets'
set :js_dir, 'javascripts'
set :images_dir, 'images'

set :bower_components, File.join(root, 'bower_components')

activate :directory_indexes

configure :build do
  activate :minify_css
  activate :minify_javascript
end

after_configuration do
  sprockets.append_path bower_components
end

