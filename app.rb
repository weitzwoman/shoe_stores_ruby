require("bundler/setup")
Bundler.require(:default)
require('pry')

Dir[File.dirname(__FILE__) + '/lib/*.rb'].each { |file| require file }

get('/') do
  @brands = Brand.all()
  @stores = Store.all()
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
  @stores = Store.all()
  @brand = Brand.find(params['id'].to_i())
  erb(:brand)
end

post('/stores') do
  @new_store = Store.new(:name => params['store_name'])
  if @new_store.save()
    redirect('/stores/'.concat(@new_store.id().to_s()))
  else
    @store = @new_store
    erb(:errors)
  end
end

get('/stores/:id') do
  @brands = Brand.all()
  @store = Store.find(params['id'].to_i())
  erb(:store)
end

patch('/stores/:id') do
  @store = Store.find(params['id'].to_i())
  @store.update({:name => params['new_store']})
  redirect('/stores/'.concat(@store.id().to_s()))
end

delete('/stores/:id') do
  @store = Store.find(params['id'].to_i())
  @store.destroy()
  redirect('/')
end
