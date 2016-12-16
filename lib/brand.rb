class Brand < ActiveRecord::Base
  has_and_belongs_to_many(:stores)
  validates(:name, :presence => true, :uniqueness => {:case_sensitive => false})
  before_save(:capitalize_brand)


private
  define_method(:capitalize_brand) do
    self.name=(name().titleize())
  end
end
