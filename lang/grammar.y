#Tokens
token IF
token DEF
token CLASS
token NEWLINE
token NUMBER
token STRING
token TRUE FALSE NIL
token IDENTIFIER
token CONSTANT
token INDENT DEDENT

#operator precedence
prechigh
	left '.'
	right '!'
	left '*','/'
	left '+','-'
	left '>','>=','<','<='
	left '==', '!='
	left '&&'
	left '||'
	right '='
	left ','
preclow

#rules of the language
rule
	Program:
		/* blank */			{result = Nodes.new ([])}
	|	Expressions			{result = val[0]}
	;

	Expressions:
		Expressions														{result = Nodes.new(val)}
	|	Expressions Terminator Expressions 		{result = val[0] << val[2]}
	| Expressions Terminator 								{result = val[0]}
	| Terminator 														{result = Nodes.new([])}
	;

	#supported Expressions
	Expression:
		Literal
	|	Call
	| Operator
	| GetConstant
	| SetConstant
	| GetLocal
	| SetLocal
	| Def
	| Class
	| If
	| '(' Expression ')' {result = val[1]}
	;

	#statement terminators
	Terminator:
		NEWLINE
	| ';'
	;

	#language literals
	Literal:
		NUMBER					{result = NumberNode.new(val[0])}
	|	STRING					{result = StringNode.new(val[0])}
	| TRUE						{result = TrueNode.new}
	| FALSE						{result = FalseNode.new}
	| NIL 						{result = NilNode.new}
	;

	#method calls
	Call:
		IDENTIFIER Arguments				{result = CallNode.new(nil,va[0],val[1])}
	|	Expression '.' IDENTIFIER	
		Arguments										{result = CallNode.new(val[0],val[2],val[3])}
	| Expression '.' IDENTIFIER 	{result = CallNode.new(val[0],val[2],[])}
	;

	#method arguments
	Arguments:
		'(' ')'								{result = []}
	|	'(' ArgList ')'				{result = val[1]}
	;

	ArgList:
		Expression 								{result = val}
	|	ArgList ',' Expression 		{result = val[0] << val[2]}
	;

	#Operators
	Operator:
		Expression '||' Expression 					{result = CallNode.new(val[0], val[1], [val[2]])}
	| Expression '&&' Expression 					{result = CallNode.new(val[0], val[1], [val[2]])}
	| Expression '==' Expression 					{result = CallNode.new(val[0], val[1], [val[2]])}
	| Expression '!=' Expression 					{result = CallNode.new(val[0], val[1], [val[2]])}
	| Expression '>' Expression 					{result = CallNode.new(val[0], val[1], [val[2]])}
	| Expression '>=' Expression 					{result = CallNode.new(val[0], val[1], [val[2]])}
	| Expression '<' Expression 					{result = CallNode.new(val[0], val[1], [val[2]])}
	| Expression '<=' Expression 					{result = CallNode.new(val[0], val[1], [val[2]])}
	| Expression '+' Expression 					{result = CallNode.new(val[0], val[1], [val[2]])}
	| Expression '-' Expression 					{result = CallNode.new(val[0], val[1], [val[2]])}
	| Expression '*' Expression 					{result = CallNode.new(val[0], val[1], [val[2]])}
	| Expression '/' Expression 					{result = CallNode.new(val[0], val[1], [val[2]])}
	;

	#gets/sets

	GetConstant:
		CONSTANT 											{result = GetConstantNode.new(val[0])}
	;

	SetConstant:
		CONSTANT  '=' Expression  		{result = SetConstantNode.new(val[0],val[2])}
	;

	GetLocal:
		IDENTIFIER 										{result = GetLocalNode.new(val[0])}
	;

	SetLocal:
		IDENTIFIER '=' Expression 		{result = SetLocalNode.new(val[0],val[2])}
	;

	Block:
		INDENT Expressions DEDENT 		{result = val[1]}
	;

	Def:
		DEF IDENTIFIER Block					{result = DefNode.new(val[1], [], val[2])}
	| DEF IDENTIFIER 								
		'(' ParamList ')' Block				{result = DefNode.new(val[1],val[3],val[5])}
	;

	ParamList:
		/*blank*/											{result = []}
	| IDENTIFIER										{result = val}
	| ParamList ',' IDENTIFIER			{result = val[0] << val[2]}
	;

	#Class defs
	Class:
		CLASS CONSTANT Block 					{result = ClassNode.new(val[1],val[2])}
	;

	#if logic
	If:
		IF Expression Block 					{result = IfNode.new(val[1],val[2])}
	;
end


#code to be added to parser
---- header
	require 'lexer'
	require 'nodes'

---- inner
	def parse(code, show_tokens=false)
		@tokens = Lexer.new.tokenize(code)
		puts @tokens.inspect if show_tokens
		do_parse #start parsing
	end

	def next_token
		@tokens.shift
	end