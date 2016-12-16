class Brand < ActiveRecord::Base
  has_and_belongs_to_many(:brands)
  validates(:name, :presence => true, :uniqueness => {:case_sensitive => false})
  before_save(:capitalize_store)


private
  define_method(:capitalize_store) do
    self.name=(name().titleize())
  end
end
