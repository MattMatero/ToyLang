class ObjectTemplate

attr_accessor :runtime_class, :ruby_value

def intialize(runtime_class, ruby_value=self)
	@runtime_class = runtime_class
	@ruby_value = ruby_value
end


end