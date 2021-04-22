require 'test/unit'
require_relative '../class/samples-op'

# SamplesOpTest is to test major functions of SampleOP class, 
# which is a tool-set for manipulating wave-form, in the form of array of numercials.
# join function appending each element
# add function add each number of same position, then divided by specific number(for controlling the output power)
class SamplesOpTest < Test::Unit::TestCase 
    def setup
        @arr1 = [[500,500],[550,550],[570,570]]
        @arr2 = [[600,600],[620,620],[650,650],[660,660]]
        @arr3 = [[100,500],[1550,550],[1570,570]]
        @arr4 = [[600,1600],[620,1620],[650,1650],[660,1660]]

        @result_join_1 = @arr1 + @arr2
        @result_join_2 = @arr3 + @arr4
        @result_add_1 = [[1100,1100],[1170,1170],[1220,1220],[660,660]]
        @result_add_2 = [[700,2100],[2170,2170],[2220,2220],[660,1660]]

        @result_add_1.map!{|w| [(w[0] / (2 ** 0.5)).to_i, (w[1] / (2 ** 0.5)).to_i]}
        @result_add_2.map!{|w| [(w[0] / (2 ** 0.5)).to_i, (w[1] / (2 ** 0.5)).to_i]}
    end
    
    def test_array_samples_join_to_sample
        op = SamplesOP.new
        result = op.array_samples_join_to_sample([@arr1,@arr2])
        assert_equal(@result_join_1, result)
        result = op.array_samples_join_to_sample([@arr3,@arr4])
        assert_equal(@result_join_2, result)
    end

    def test_samples_add_from_array
        op = SamplesOP.new
        result = op.samples_add_from_array([@arr1,@arr2])
        assert_equal(@result_add_1, result)
        result = op.samples_add_from_array([@arr3,@arr4])
        assert_equal(@result_add_2, result)
    end

    
end