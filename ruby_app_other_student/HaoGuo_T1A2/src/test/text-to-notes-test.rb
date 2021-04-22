require 'test/unit'
require_relative '../class/text-to-notes'

# TextToNotesTest is a class for test major function of class TextToNotes
# The class to be tested is for translate a string to a series of instructions for writing samples,
# or keep the effective letters of the original string.
class TextToNotesTest < Test::Unit::TestCase 
    def setup
        @test_str_1 = "qwerasdfzxcv"
        @test_str_2 = "tyuighjkbnm,"
        @test_str_3 = "1234567890-="
        @test_str_4 = ";,. []"

        @test_result_1 = "sdf"
        @test_result_2 = "yuihjk"
        @test_result_3 = "-"
        @test_result_4 = ""

        @test2_result_1 = ["sample_1","sample_2","sample_3"]
        @test2_result_2 = ["1","1/2","1/4","1/3","1/6","1/12"]
        @test2_result_3 = ["rest"]
        @test2_result_4 = []
    end
    
    def test_string_to_effective_simple
        ttn = TextToNotes.new
        result = ttn.string_to_effective_simple(@test_str_1)
        assert_equal(@test_result_1, result)
        result = ttn.string_to_effective_simple(@test_str_2)
        assert_equal(@test_result_2, result)
        result = ttn.string_to_effective_simple(@test_str_3)
        assert_equal(@test_result_3, result)
        result = ttn.string_to_effective_simple(@test_str_4)
        assert_equal(@test_result_4, result)
    end

    def test_effective_simple_map
        ttn = TextToNotes.new
        result = ttn.effective_simple_map(@test_str_1)
        assert_equal(@test2_result_1, result)
        result = ttn.effective_simple_map(@test_str_2)
        assert_equal(@test2_result_2, result)
        result = ttn.effective_simple_map(@test_str_3)
        assert_equal(@test2_result_3, result)
        result = ttn.effective_simple_map(@test_str_4)
        assert_equal(@test2_result_4, result)
    end

    
end