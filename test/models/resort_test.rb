require 'test_helper'

class ResortTest < ActiveSupport::TestCase
  def setup
    @resort = Resort.create(name: "Vail", state: "Colorado")
  end
 
  test "resort must be valid" do
      assert @resort.valid? 
  end

  test "resort must have name" do
    @resort.name = ""
    assert_not @resort.valid? 
  end

  test "resort must have state" do
    @resort.state = ""
    assert_not @resort.valid? 
  end

  test "resort name must be < 80 chars" do
    @resort.name = "nnnnnnnnnnnnnnaaaaaaaaaaaaaaaaaaaaaaaaaaaaaaaaaaaaaaaaaaammmmmmmmmmmmmmmmmmmmmmmmmmmmmeeeeeeeeeeeeeeeeeeeeeeeeeeeeeeeee"
    assert_not @resort.valid? 
  end

  test "resort name must be < 50 chars" do
    @resort.state = "sssssssssssstttttttttaaaaaaaaaaaaaaaaaaatttttttttttttttttttttteeeeeeeeeeeeeeeeeeeee"
    assert_not @resort.valid? 
  end

end
