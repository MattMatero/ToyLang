Constants = {}

Constants["Class"] = ClassTemplate.new 
Constants["Class"].runtime_class = Constants["Class"]
Constants["Object"] = ClassTemplate.new
Constants["Number"] = ClassTemplate.new(Constants["Object"])
Constants["String"] = ClassTemplate.new(Constants["Object"])

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
	puts args.first.ruby_value
	Constants["nil"] #returns obj from our runtime 
end

Constants["Object"].def :hash_code do |receiver, args|
	hash = receiver.hash
	Constants["Number"].new_with_value(hash)
end

Constants["Number"].def :+ do |receiver, args|
	Constants["Number"].new_with_value(receiver.ruby_value + args.first.ruby_value)
end

Constants["Number"].def :- do |receiver, args|
	Constants["Number"].new_with_value(receiver.ruby_value - args.first.ruby_value)
end

Constants["Number"].def :* do |receiver, args|
	Constants["Number"].new_with_value(receiver.ruby_value * args.first.ruby_value)
end

Constants["Number"].def :/ do |receiver, args|
	Constants["Number"].new_with_value(receiver.ruby_value / args.first.ruby_value)
end