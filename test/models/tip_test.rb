require 'test_helper'

class TipTest < ActiveSupport::TestCase
  def setup
    @tip = Tip.create(title: "Title", body: "1234567hgjghjhg8910", resort_id: 1, user_id: 1)
  end

  test "tip must have title" do
    @tip.title = ""
    assert_not @tip.valid? 
  end

  test "tip must have body" do
    @tip.body = ""
    assert_not @tip.valid? 
  end

end
