require('spec_helper')

describe(Brand) do
  it { should have_and_belong_to_many(:stores)}

  it { should validate_presence_of(:name)}

  # it { should validate_uniqueness_of(:name)}
  #
  # it('capitalizes all words of a brand name') do
  #   test_brand = Brand.create({:name => 'nike'})
  #   expect(test_brand.name()).to(eq('Nike'))
  # end
end
