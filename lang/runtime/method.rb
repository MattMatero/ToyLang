class MethodTemplate 

	def initialize(params, body)
		@params = params
		@body = body
	end

	def call(receiver, arguments)
		context = Context.new(receiver)
		#assign arguments to local vars
		@params.each_with_index do |p,i|
			context.locals[p] = arguments[i]
		end

		@body.eval(context)
	end
end