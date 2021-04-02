require 'test/unit'
require_relative '../customer'


class customerTest < Test::Unit::TestCase
    # def setup
    #     @@customer = @@customer.new("John", "Smith")
    #     @@customer2 = @@customer.new("Jane", "Doe")
    # end

    def self.startup
        @@customer = @@customer.new("John", "Smith")
        @@customer2 = @@customer.new("Jane", "Doe")
    end

    def test_new_instance
        # @@customer = @@customer.new("John", "Smith")
        assert_not_nil(@@customer)
    end

    def test_new_no_params
        assert_raises(ArgumentError) {
            @@customer = @@customer.new
        }
        @@customer = @@customer.new("John", "Smith")   
    end

    def test_first_name
        # @@customer = @@customer.new("John", "Smith")
        assert_equal("John", @@customer.first_name)
        # @@customer2 = @@customer.new("Jane", "Doe")
        assert_equal("Jane", @@customer2.first_name)
    end

    def test_last_name
        @@customer = @@customer.new("John", "Smith")
        assert_equal("Smith", @@customer.last_name)
    end

    def test_full_name
        @@customer = @@customer.new("John", "Smith")
        assert_equal("John Smith", @@customer.full_name)
    end
end

