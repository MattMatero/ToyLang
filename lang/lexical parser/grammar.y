class Parser

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
token WHILE

prechigh
  left  '.'
  right '!'
  left  '*' '/'
  left  '+' '-'
  left  '>' '>=' '<' '<='
  left  '==' '!='
  left  '&&'
  left  '||'
  right '='
  left  ','
preclow

rule
  Program:
    /* nothing */                      { result = Nodes.new([]) }
  | Expressions                        { result = val[0] }
  ;
  
  Expressions:
    Expression                         { result = Nodes.new(val) }
  | Expressions Terminator Expression  { result = val[0] << val[2] }
  | Expressions Terminator             { result = val[0] }
  | Terminator                         { result = Nodes.new([]) }
  ;

  Expression:
    Literal
  | Call
  | Operator
  | GetConstant
  | SetConstant
  | GetLocal
  | SetLocal
  | Def
  | Class
  | If
  | While
  | '(' Expression ')'    { result = val[1] }
  ;

  Terminator:
    NEWLINE
  | ";"
  ;
  
  Literal:
    NUMBER                        { result = NumberNode.new(val[0]) }
  | STRING                        { result = StringNode.new(val[0]) }
  | TRUE                          { result = TrueNode.new }
  | FALSE                         { result = FalseNode.new }
  | NIL                           { result = NilNode.new }
  ;
  
  Call:
    IDENTIFIER Arguments          { result = CallNode.new(nil, val[0], val[1]) }
  | Expression "." IDENTIFIER
      Arguments                   { result = CallNode.new(val[0], val[2], val[3]) }
  | Expression "." IDENTIFIER     { result = CallNode.new(val[0], val[2], []) }
  ;

  Arguments:
    "(" ")"                       { result = [] }
  | "(" ArgList ")"               { result = val[1] }
  ;

  ArgList:
    Expression                    { result = val }
  | ArgList "," Expression        { result = val[0] << val[2] }
  ;
  
  Operator:
               '!'  Expression  { result = CallNode.new(val[1], val[0], []) }
  | Expression '||' Expression  { result = CallNode.new(val[0], val[1], [val[2]]) }
  | Expression '&&' Expression  { result = CallNode.new(val[0], val[1], [val[2]]) }
  | Expression '==' Expression  { result = CallNode.new(val[0], val[1], [val[2]]) }
  | Expression '!=' Expression  { result = CallNode.new(val[0], val[1], [val[2]]) }
  | Expression '>'  Expression  { result = CallNode.new(val[0], val[1], [val[2]]) }
  | Expression '>=' Expression  { result = CallNode.new(val[0], val[1], [val[2]]) }
  | Expression '<'  Expression  { result = CallNode.new(val[0], val[1], [val[2]]) }
  | Expression '<=' Expression  { result = CallNode.new(val[0], val[1], [val[2]]) }
  | Expression '+'  Expression  { result = CallNode.new(val[0], val[1], [val[2]]) }
  | Expression '-'  Expression  { result = CallNode.new(val[0], val[1], [val[2]]) }
  | Expression '*'  Expression  { result = CallNode.new(val[0], val[1], [val[2]]) }
  | Expression '/'  Expression  { result = CallNode.new(val[0], val[1], [val[2]]) }
  ;
  
  GetConstant:
    CONSTANT                      { result = GetConstantNode.new(val[0]) }
  ;
  
  SetConstant:
    CONSTANT "=" Expression       { result = SetConstantNode.new(val[0], val[2]) }
  ;

  GetLocal:
    IDENTIFIER                    { result = GetLocalNode.new(val[0]) }
  ;
  
  SetLocal:
    IDENTIFIER "=" Expression     { result = SetLocalNode.new(val[0], val[2]) }
  ;

  Block:
    INDENT Expressions DEDENT     { result = val[1] }
  ;
  
  Def:
    DEF IDENTIFIER Block          { result = DefNode.new(val[1], [], val[2]) }
  | DEF IDENTIFIER
      "(" ParamList ")" Block     { result = DefNode.new(val[1], val[3], val[5]) }
  ;

  ParamList:
    /* nothing */                 { result = [] }
  | IDENTIFIER                    { result = val }
  | ParamList "," IDENTIFIER      { result = val[0] << val[2] }
  ;
  
  Class:
    CLASS CONSTANT Block          { result = ClassNode.new(val[1], val[2]) }
  ;
  
  If:
    IF Expression Block           { result = IfNode.new(val[1], val[2]) }
  ;

  While:
    WHILE Expression Block        { result = WhileNode.new(val[1], val[2] )}
  ;
end

---- header
  require_relative "./lexer"
  require_relative "./nodes"

---- inner
  def parse(code, show_tokens=false)
    @tokens = Lexer.new.tokenize(code) # Tokenize the code using our lexer
    puts @tokens.inspect if show_tokens
    do_parse # Kickoff the parsing process
  end
  
  def next_token
    @tokens.shift
  end