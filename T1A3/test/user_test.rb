require 'test/unit'
require_relative '../user'

class UserTest < Test::Unit::TestCase
    def test_new_instance
        user = User.new("Kyu", "8")
        assert_not_nil(user)
    end
end