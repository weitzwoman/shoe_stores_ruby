require('spec_helper')

describe('the add brand route', {:type => :feature}) do
  it('will add a new brand') do
    visit('/')
    fill_in('brand_name', :with => 'patagonia')
    click_button('Add Brand')
    expect(page).to have_content('Patagonia')
  end
end

describe('the add shoe store route', {:type => :feature}) do
  it('will add a new store') do
    visit('/')
    fill_in('store_name', :with => 'fancy shoes')
    click_button('Add Shoe Store')
    expect(page).to have_content('Fancy Shoes')
  end
end
