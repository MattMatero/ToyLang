require 'require_all'
require "test_helper"
require_rel "../lang/runtime"

class RuntimeTest < Test::Unit::TestCase
  def test_get_constant
    assert_not_nil Constants["Object"]
  end
  
  def test_create_an_object
    assert_equal Constants["Object"], Constants["Object"].new.runtime_class
  end
  
  def test_create_an_object_mapped_to_ruby_value
    assert_equal 32, Constants["Number"].new_with_value(32).ruby_value
  end
  
  def test_lookup_method_in_class
    assert_not_nil Constants["Object"].lookup("print")
    assert_raise(RuntimeError) { Constants["Object"].lookup("non-existant") }
  end
  
  def test_call_method
    # Mimic Object.new in the language
    object = Constants["Object"].call("new")
    
    assert_equal Constants["Object"], object.runtime_class # assert object is an Object
  end
  
  def test_a_class_is_a_class
    assert_equal Constants["Class"], Constants["Number"].runtime_class
  end

  def test_lookup_in_super_class
    num_object = Constants["Number"]
    assert_not_nil num_object.lookup("hash_code")
  end

  def test_hash_code_inheritence
    num_object = Constants["Number"].call("new") #make new number object
    runtime = num_object.runtime_class
    
    assert_equal runtime, num_object.call("hash_code").runtime_class
  end

  def test_addition_function_result
    num = Constants["Number"].new_with_value(3)
    args = Array.new
    args.push Constants["Number"].new_with_value(7)
    
    result = num.call("+",args)

    assert_equal num.runtime_class, result.runtime_class
    assert_equal 10, result.ruby_value
  end

  def test_subtraction_function_result
    num = Constants["Number"].new_with_value(3)
    args = Array.new
    args.push Constants["Number"].new_with_value(7)
    
    result = num.call("-",args)

    assert_equal num.runtime_class, result.runtime_class
    assert_equal -4, result.ruby_value
  end

  def test_mult_function_result
    num = Constants["Number"].new_with_value(3)
    args = Array.new
    args.push Constants["Number"].new_with_value(7)
    
    result = num.call("*",args)

    assert_equal num.runtime_class, result.runtime_class
    assert_equal 21,result.ruby_value
  end

  def test_division_function_result
    num = Constants["Number"].new_with_value(3)
    args = Array.new
    args.push Constants["Number"].new_with_value(7)
    
    result = num.call("/",args)

    assert_equal num.runtime_class, result.runtime_class
    assert_equal 0, result.ruby_value
  end
end