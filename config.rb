page '/*.xml', layout: false
page '/*.json', layout: false
page '/*.txt', layout: false

activate :blog do |blog|
  blog.prefix = "posts"
  blog.permalink = "{title}.html"
  blog.sources = "{title}.html"
  blog.layout = "post"
end


configure :development do
  activate :livereload
end

configure :build do
  activate :minify_css
  activate :minify_javascript
end
