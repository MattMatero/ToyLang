require 'require_all'
require_rel '/lang/Interpreter'
require 'readline'

interpreter = Interpreter.new

if file = ARGV.first
	interpreter.eval File.read(file)

else
	puts "Starting REPL"
	loop do
		line = Readline::readline(">> ")
    Readline::HISTORY.push(line)
    value = interpreter.eval(line)
    puts = "=> #{value.ruby_value.inspect}"
	end
end