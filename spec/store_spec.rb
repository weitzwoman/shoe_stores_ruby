require('spec_helper')

describe(Store) do
  it { should have_and_belong_to_many(:brands)}
  # 
  # it { should validate_presence_of(:name)}
  #
  # it { should validate_uniqueness_of(:name)}
  #
  # it('capitalizes all words of a store name') do
  #   test_store = Store.create({:name => 'birkenstock store'})
  #   expect(test_store.name()).to(eq('Birkenstock Store'))
  # end
end
