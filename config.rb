###
# Compass
###

# Susy grids in Compass
# First: gem install susy
# require 'susy'

# Change Compass configuration
# compass_config do |config|
#   config.output_style = :compact
# end

###
# Page options, layouts, aliases and proxies
###

# Per-page layout changes:
#
# With no layout
# page "/path/to/file.html", :layout => false
#
# With alternative layout
# page "/path/to/file.html", :layout => :otherlayout
#
# A path which all have the same layout
# with_layout :admin do
#   page "/admin/*"
# end

page '/sitemap.xml', :layout => false

# Proxy (fake) files
# page "/this-page-has-no-template.html", :proxy => "/template-file.html" do
#   @which_fake_page = "Rendering a fake page with a variable"
# end

###
# Helpers
###

# Automatic image dimensions on image_tag helper
activate :automatic_image_sizes

activate :blog do |blog|
  blog.prefix = 'posts'
  blog.permalink = ':title'
  blog.default_extension = '.md'
  blog.layout = 'post'
  blog.paginate = true
  blog.tag_template = 'tag.html'
  blog.taglink = '/tags/:tag.html'
end

# Directory Indexes
activate :directory_indexes

Time.zone = 'Paris'

# Methods defined in the helpers block are available in templates
# helpers do
#   def some_helper
#     "Helping"
#   end
# end

set :css_dir, 'css'

set :js_dir, 'js'

set :images_dir, 'img'

set :markdown_engine, :redcarpet
set :markdown,
  fenced_code_blocks: true,
  autolink: true,
  smartypants: true,
  gh_blockcode: true,
  lax_spacing: true

activate :rouge_syntax

# Build-specific configuration
configure :build do
  # For example, change the Compass output style for deployment
  activate :minify_css

  # Minify Javascript on build
  activate :minify_javascript

  # Minify HTML
  activate :minify_html

  # Enable cache buster
  # activate :cache_buster

  # Use relative URLs
  # activate :relative_assets

  # Add asset fingerprinting to avoid cache issues
  activate :asset_hash

  # Compress PNGs after build
  # First: gem install middleman-smusher
  # require "middleman-smusher"
  # activate :smusher

  # Or use a different image path
  # set :http_path, "/Content/images/"
end

activate :deploy do |deploy|
  deploy.method = :git
  deploy.remote = 'gh-pages'
  deploy.branch = 'master'
end

activate :livereload
