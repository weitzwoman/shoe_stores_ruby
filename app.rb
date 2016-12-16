require("bundler/setup")
Bundler.require(:default)
require('pry')

Dir[File.dirname(__FILE__) + '/lib/*.rb'].each { |file| require file }

get('/') do
  @brands = Brand.all()
  # @stores = Stores.all()
  erb(:index)
end

post('/brands') do
  @new_brand = Brand.new(:name => params['brand_name'])
  if @new_brand.save()
    redirect('/brands/'.concat(@new_brand.id().to_s()))
  else
    @brand = @new_brand
    erb(:errors)
  end
end

get('/brands/:id') do
  # @stores = Store.all()
  @brand = Brand.find(params['id'].to_i())
  erb(:brand)
end
