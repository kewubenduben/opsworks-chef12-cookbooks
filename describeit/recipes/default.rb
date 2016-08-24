%w(
  common
  rbenv
  nodejs
  wkhtmltopdf
  redis
  nginx
  app
).each do |r|
  include_recipe "describeit::#{r}"
end
