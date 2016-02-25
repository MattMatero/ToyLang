class Lexer

  KEYWORDS = ['def','class','if','true','false','nil','while']

  #reads the code and breaks it into tokens
  def tokenize(code)
    code.chomp! 
    tokens = []

    indent_level = 0 #blocks are formed on indentation
    indent_stack = []

    i = 0
    while i < code.size
      token = code[i..-1]

      #deteremine which type of token we are dealing with
      if identifer = token[/\A([a-z]\w*)/,1] #a character followed by zero or more words
        if KEYWORDS.include? identifer
          tokens.push [identifer.upcase.to_sym, identifer]
        else
          tokens.push [:IDENTIFIER, identifer]
        end
        i += identifer.size
      elsif constant = token[/\A([A-Z]\w*)/,1] #a capital character followed by zero or more words
        tokens.push [:CONSTANT, constant]
        i += constant.size
      elsif number = token[/\A([0-9]+)/,1] #one or more digits
        tokens.push [:NUMBER, number]
        i += number.size
      elsif string = token[/\A"([^"]*)"/,1] #anything between " "
        tokens.pish [:STRING, string]
        i += string.size + 2 #extra 2 spaces for ending " 
      elsif indent = token[/\A\:\n( +)/m,1] #looks for : followed by a newline and spaces (python indentation)
        if indent.size <= indent_level
          raise 'Bad indent level. Got #{index.size} indents, expected > #{indent_level}'
        end
        
        indent_level = indent.size
        indent_stack.push indent_level
        tokens.push [:INDENT, indent.size]
        i += indent.size + 2
      elsif indent = token[/\A\n( *)/m,1] #looks for newlines and spaces
        if indent.size == indent_level #inside same block
          tokens.push [:NEWLINE, '\n'] 
        elsif indent.size < indent_level #dedent
          while indent.size < indent_level
            indent_stack.pop
            indent_level = indent_stack.last || 0
            tokens.push [:DEDENT, indent.size]
          end
          tokens.push [:NEWLINE, '\n']
        else #indent.size > indent_level
          raise 'Missing \':\''
        end

        i += indent.size + 1
      elsif operator = token[/\A(\|\||&&|==|!=|<=|>=)/,1]
        tokens.push [operator,operator]
        i += operator.size
      elsif token.match(/\A /) #ignore spaces
        i += 1
      else #remaining single characters
        value = token[0,1]
        token.push [value,value]
        i += 1
      end
    end

    while indent = indent_stack.pop
      tokens.push [:DEDENT, indent_stack.first || 0]
    end
    tokens
  end
end