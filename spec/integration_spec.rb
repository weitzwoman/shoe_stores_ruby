require('spec_helper')

describe('the add brand route', {:type => :feature}) do
  it('will add a new brand') do
    visit('/')
    fill_in('brand_name', :with => 'patagonia')
    click_button('Add Brand')
    expect(page).to have_content('Patagonia')
  end
  it('will update stores selling a given brand') do
    test_store = Store.create(:name => "Feet Plus")
    test_brand = Brand.create(:name => "Mizuno")
    visit("/brands/#{test_brand.id}")
    check("Feet Plus")
    click_button("Add Shoe Store")
    expect(page).to have_content("Feet Plus")
  end
end

describe('the add shoe store route', {:type => :feature}) do
  it('will add a new store') do
    visit('/')
    fill_in('store_name', :with => 'fancy shoes')
    click_button('Add Shoe Store')
    expect(page).to have_content('Fancy Shoes')
  end
  it('will update brands in a given store') do
    test_store = Store.create(:name => "Walk It Off")
    test_brand = Brand.create(:name => "Altra")
    visit("/stores/#{test_store.id}")
    check("Altra")
    click_button("Add Brand")
    expect(page).to have_content("Altra")
  end
  it('will update name of store') do
    test_store = Store.create(:name => "Fashion Forward")
    visit("/stores/#{test_store.id}")
    fill_in('new_store', :with => "Fashion Backward")
    click_button("Update Name")
    expect(page).to have_content("Fashion Backward")
  end
  it('will delete store') do
    test_store = Store.create(:name => "Sandals All Year")
    visit("/stores/#{test_store.id}")
    click_button("Delete Store")
    expect(page).to_not have_content("Sandals All Year")
  end
end
