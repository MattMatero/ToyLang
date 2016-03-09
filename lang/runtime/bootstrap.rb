Constants = {}

Constants["Class"] = ClassTemplate.new 
Constants["Class"].runtime_class = Constants["Class"]
Constants["Object"] = ClassTemplate.new
Constants["Number"] = ClassTemplate.new
Constants["String"] = ClassTemplate.new

root_self = Constants["Object"].new
RootContext = Context.new(root_self)

Constants["TrueClass"] = ClassTemplate.new
Constants["FalseClass"] = ClassTemplate.new
Constants["NilClass"] = ClassTemplate.new

Constants["true"] = Constants["TrueClass"].new_with_value(true)
Constants["false"] = Constants["FalseClass"].new_with_value(false)
Constants["nil"] = Constants["NilClass"].new_with_value(nil)


#Define method on Class to allow method calls
Constants["Class"].def :new do |receiver, args|
	receiver.new
end

Constants["Object"].def :print do |receiver, args|
	puts args.first.ruby_Value
	Constants["nil"] #returns obj from our runtime 
end