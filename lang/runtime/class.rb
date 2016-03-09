class ClassTemplate < ObjectTemplate
	
	attr_reader :runtime_methods

	def initialize(superclass = nil)
		@runtime_methods = {}
		@runtime_class = Constants['Class']
    @runtime_superclass = superclass
	end

	def lookup(method_name)
		method = @runtime_methods[method_name]
		
    unless method
      if @runtime_superclass
        return @runtime_superclass.lookup(method_name)
      else
        raise "Method not found: #{method_name}" if method.nil? 
      end
    end
		method
	end

	def def(name,&block)
		@runtime_methods[name.to_s] = block
	end

	def new
		ObjectTemplate.new(self)
	end

	def new_with_value(value)
		ObjectTemplate.new(self,value)
	end
end