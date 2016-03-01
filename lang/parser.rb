#
# DO NOT MODIFY!!!!
# This file is automatically generated by Racc 1.4.6
# from Racc grammer file "".
#

require 'racc/parser.rb'

  require_relative "./lexer"
  require_relative "./nodes"

class Parser < Racc::Parser

module_eval(<<'...end grammar.y/module_eval...', 'grammar.y', 152)
  def parse(code, show_tokens=false)
    @tokens = Lexer.new.tokenize(code) # Tokenize the code using our lexer
    puts @tokens.inspect if show_tokens
    do_parse # Kickoff the parsing process
  end
  
  def next_token
    @tokens.shift
  end
...end grammar.y/module_eval...
##### State transition tables begin ###

racc_action_table = [
    29,    27,    28,    17,    19,    20,    21,    22,    23,    24,
    26,    58,    33,    30,    77,    25,    29,    27,    28,    17,
    19,    20,    21,    22,    23,    24,    26,    17,    33,    30,
    16,    25,    18,    79,    29,    27,    28,    48,    19,    20,
    21,    22,    23,    24,    26,    77,    16,    30,    18,    25,
    92,    33,    91,    29,    27,    28,    18,    19,    20,    21,
    22,    23,    24,    26,    16,    73,    30,    51,    25,    29,
    27,    28,    88,    19,    20,    21,    22,    23,    24,    26,
    31,    52,    30,    16,    25,    29,    27,    28,    53,    19,
    20,    21,    22,    23,    24,    26,    56,    77,    30,    16,
    25,    29,    27,    28,    94,    19,    20,    21,    22,    23,
    24,    26,   nil,   nil,    30,    16,    25,    29,    27,    28,
   nil,    19,    20,    21,    22,    23,    24,    26,   nil,   nil,
    30,    16,    25,    29,    27,    28,   nil,    19,    20,    21,
    22,    23,    24,    26,   nil,   nil,    30,    16,    25,    29,
    27,    28,   nil,    19,    20,    21,    22,    23,    24,    26,
   nil,   nil,    30,    16,    25,    29,    27,    28,   nil,    19,
    20,    21,    22,    23,    24,    26,   nil,   nil,    30,    16,
    25,    29,    27,    28,   nil,    19,    20,    21,    22,    23,
    24,    26,   nil,   nil,    30,    16,    25,    29,    27,    28,
   nil,    19,    20,    21,    22,    23,    24,    26,   nil,   nil,
    30,    16,    25,    29,    27,    28,   nil,    19,    20,    21,
    22,    23,    24,    26,   nil,   nil,    30,    16,    25,    29,
    27,    28,   nil,    19,    20,    21,    22,    23,    24,    26,
   nil,   nil,    30,    16,    25,    29,    27,    28,   nil,    19,
    20,    21,    22,    23,    24,    26,   nil,   nil,    30,    16,
    25,    29,    27,    28,   nil,    19,    20,    21,    22,    23,
    24,    26,   nil,   nil,    30,    16,    25,    29,    27,    28,
   nil,    19,    20,    21,    22,    23,    24,    26,   nil,   nil,
    30,    16,    25,    29,    27,    28,   nil,    19,    20,    21,
    22,    23,    24,    26,   nil,   nil,    30,    16,    25,    29,
    27,    28,   nil,    19,    20,    21,    22,    23,    24,    26,
   nil,   nil,    30,    16,    25,    29,    27,    28,   nil,    19,
    20,    21,    22,    23,    24,    26,   nil,   nil,    30,    16,
    25,    29,    27,    28,    17,    19,    20,    21,    22,    23,
    24,    26,   nil,    90,    30,    16,    25,    29,    27,    28,
   nil,    19,    20,    21,    22,    23,    24,    26,   nil,   nil,
    30,    16,    25,    18,    33,   nil,    44,    45,    42,    43,
    38,    39,    40,    41,    36,    37,    33,    16,    44,    45,
    42,    43,    38,    39,    40,    41,    36,    37,    35,    34,
    49,    77,    48,    71,    33,   nil,    44,    45,    42,    43,
    38,    39,    40,    41,    36,    37,    35,    34,    77,   nil,
    85,    33,    84,    44,    45,    42,    43,    38,    39,    40,
    41,    36,    37,    35,    34,    33,   nil,    44,    45,    42,
    43,    38,    39,    40,    41,    36,    37,    35,    34,    33,
   nil,    44,    45,    42,    43,    38,    39,    40,    41,    36,
    37,    35,    34,    33,   nil,    44,    45,    42,    43,    38,
    39,    40,    41,    36,    37,    35,    34,    33,   nil,    44,
    45,    42,    43,    38,    39,    40,    41,    36,    37,    35,
    34,    33,   nil,    44,    45,    42,    43,    38,    39,    40,
    41,    36,    37,    35,    34,    33,   nil,    44,    45,    42,
    43,    38,    39,    40,    41,    36,    37,    35,    34,    33,
   nil,    44,    45,    42,    43,    38,    39,    40,    41,    36,
    37,    35,    33,   nil,    44,    45,    42,    43,    38,    39,
    40,    41,    33,   nil,    44,    45,    42,    43,    38,    39,
    40,    41,    33,   nil,    44,    45,    42,    43,    33,   nil,
    44,    45,    42,    43,    33,   nil,    44,    45,    42,    43,
    33,   nil,    44,    45,    42,    43,    33,   nil,    44,    45,
    33,   nil,    44,    45 ]

racc_action_check = [
     0,     0,     0,     0,     0,     0,     0,     0,     0,     0,
     0,    33,    70,     0,    52,     0,    77,    77,    77,    77,
    77,    77,    77,    77,    77,    77,    77,     2,    69,    77,
     0,    77,     0,    52,    48,    48,    48,    58,    48,    48,
    48,    48,    48,    48,    48,    53,    77,    48,    77,    48,
    87,    50,    87,    30,    30,    30,     2,    30,    30,    30,
    30,    30,    30,    30,    48,    48,    30,    26,    30,    16,
    16,    16,    79,    16,    16,    16,    16,    16,    16,    16,
     1,    27,    16,    30,    16,    49,    49,    49,    28,    49,
    49,    49,    49,    49,    49,    49,    31,    91,    49,    16,
    49,    25,    25,    25,    92,    25,    25,    25,    25,    25,
    25,    25,   nil,   nil,    25,    49,    25,    85,    85,    85,
   nil,    85,    85,    85,    85,    85,    85,    85,   nil,   nil,
    85,    25,    85,    45,    45,    45,   nil,    45,    45,    45,
    45,    45,    45,    45,   nil,   nil,    45,    85,    45,    44,
    44,    44,   nil,    44,    44,    44,    44,    44,    44,    44,
   nil,   nil,    44,    45,    44,    29,    29,    29,   nil,    29,
    29,    29,    29,    29,    29,    29,   nil,   nil,    29,    44,
    29,    51,    51,    51,   nil,    51,    51,    51,    51,    51,
    51,    51,   nil,   nil,    51,    29,    51,    43,    43,    43,
   nil,    43,    43,    43,    43,    43,    43,    43,   nil,   nil,
    43,    51,    43,    32,    32,    32,   nil,    32,    32,    32,
    32,    32,    32,    32,   nil,   nil,    32,    43,    32,    42,
    42,    42,   nil,    42,    42,    42,    42,    42,    42,    42,
   nil,   nil,    42,    32,    42,    41,    41,    41,   nil,    41,
    41,    41,    41,    41,    41,    41,   nil,   nil,    41,    42,
    41,    35,    35,    35,   nil,    35,    35,    35,    35,    35,
    35,    35,   nil,   nil,    35,    41,    35,    36,    36,    36,
   nil,    36,    36,    36,    36,    36,    36,    36,   nil,   nil,
    36,    35,    36,    37,    37,    37,   nil,    37,    37,    37,
    37,    37,    37,    37,   nil,   nil,    37,    36,    37,    38,
    38,    38,   nil,    38,    38,    38,    38,    38,    38,    38,
   nil,   nil,    38,    37,    38,    39,    39,    39,   nil,    39,
    39,    39,    39,    39,    39,    39,   nil,   nil,    39,    38,
    39,    40,    40,    40,    86,    40,    40,    40,    40,    40,
    40,    40,   nil,    86,    40,    39,    40,    34,    34,    34,
   nil,    34,    34,    34,    34,    34,    34,    34,   nil,   nil,
    34,    40,    34,    86,    60,   nil,    60,    60,    60,    60,
    60,    60,    60,    60,    60,    60,    46,    34,    46,    46,
    46,    46,    46,    46,    46,    46,    46,    46,    46,    46,
    24,    55,    24,    46,    55,   nil,    55,    55,    55,    55,
    55,    55,    55,    55,    55,    55,    55,    55,    54,   nil,
    74,    54,    74,    54,    54,    54,    54,    54,    54,    54,
    54,    54,    54,    54,    54,    72,   nil,    72,    72,    72,
    72,    72,    72,    72,    72,    72,    72,    72,    72,    76,
   nil,    76,    76,    76,    76,    76,    76,    76,    76,    76,
    76,    76,    76,    57,   nil,    57,    57,    57,    57,    57,
    57,    57,    57,    57,    57,    57,    57,    89,   nil,    89,
    89,    89,    89,    89,    89,    89,    89,    89,    89,    89,
    89,    75,   nil,    75,    75,    75,    75,    75,    75,    75,
    75,    75,    75,    75,    75,     3,   nil,     3,     3,     3,
     3,     3,     3,     3,     3,     3,     3,     3,     3,    59,
   nil,    59,    59,    59,    59,    59,    59,    59,    59,    59,
    59,    59,    62,   nil,    62,    62,    62,    62,    62,    62,
    62,    62,    61,   nil,    61,    61,    61,    61,    61,    61,
    61,    61,    63,   nil,    63,    63,    63,    63,    65,   nil,
    65,    65,    65,    65,    64,   nil,    64,    64,    64,    64,
    66,   nil,    66,    66,    66,    66,    67,   nil,    67,    67,
    68,   nil,    68,    68 ]

racc_action_pointer = [
    -2,    80,    22,   489,   nil,   nil,   nil,   nil,   nil,   nil,
   nil,   nil,   nil,   nil,   nil,   nil,    67,   nil,   nil,   nil,
   nil,   nil,   nil,   nil,   370,    99,    37,    70,    76,   163,
    51,    96,   211,     0,   355,   259,   275,   291,   307,   323,
   339,   243,   227,   195,   147,   131,   370,   nil,    32,    83,
    35,   179,     1,    32,   405,   388,   nil,   447,     5,   503,
   358,   526,   516,   536,   548,   542,   554,   560,   564,    12,
    -4,   nil,   419,   nil,   389,   475,   433,    14,   nil,    61,
   nil,   nil,   nil,   nil,   nil,   115,   339,    19,   nil,   461,
   nil,    84,    93,   nil,   nil ]

racc_action_default = [
    -1,   -59,    -2,    -3,    -6,    -7,    -8,    -9,   -10,   -11,
   -12,   -13,   -14,   -15,   -16,   -17,   -59,   -19,   -20,   -21,
   -22,   -23,   -24,   -25,   -48,   -59,   -46,   -59,   -59,   -59,
   -59,   -59,    -5,   -59,   -59,   -59,   -59,   -59,   -59,   -59,
   -59,   -59,   -59,   -59,   -59,   -59,   -59,   -26,   -59,   -59,
   -33,   -59,   -59,   -59,   -59,   -59,    95,    -4,   -28,   -34,
   -35,   -36,   -37,   -38,   -39,   -40,   -41,   -42,   -43,   -44,
   -45,   -18,   -31,   -29,   -59,   -49,   -47,   -59,   -51,   -53,
   -56,   -57,   -58,   -27,   -30,   -59,   -59,   -59,   -54,   -32,
   -50,   -59,   -59,   -52,   -55 ]

racc_goto_table = [
    32,     2,    46,    78,    80,    81,    82,    47,     1,    74,
    87,    50,   nil,   nil,   nil,    54,    55,   nil,    57,   nil,
    59,    60,    61,    62,    63,    64,    65,    66,    67,    68,
    69,    70,   nil,   nil,    72,    75,   nil,    76,   nil,   nil,
   nil,    83,    93,   nil,   nil,   nil,   nil,   nil,   nil,   nil,
   nil,   nil,   nil,   nil,   nil,   nil,   nil,   nil,   nil,   nil,
   nil,   nil,   nil,   nil,   nil,   nil,   nil,   nil,   nil,   nil,
   nil,    89,   nil,   nil,   nil,   nil,   nil,   nil,    86,   nil,
   nil,   nil,   nil,   nil,    32 ]

racc_goto_check = [
     4,     2,     3,    18,    18,    18,    18,    16,     1,    17,
    19,     3,   nil,   nil,   nil,     3,     3,   nil,     3,   nil,
     3,     3,     3,     3,     3,     3,     3,     3,     3,     3,
     3,     3,   nil,   nil,     3,     3,   nil,     3,   nil,   nil,
   nil,    16,    18,   nil,   nil,   nil,   nil,   nil,   nil,   nil,
   nil,   nil,   nil,   nil,   nil,   nil,   nil,   nil,   nil,   nil,
   nil,   nil,   nil,   nil,   nil,   nil,   nil,   nil,   nil,   nil,
   nil,     3,   nil,   nil,   nil,   nil,   nil,   nil,     2,   nil,
   nil,   nil,   nil,   nil,     4 ]

racc_goto_pointer = [
   nil,     8,     1,   -14,    -2,   nil,   nil,   nil,   nil,   nil,
   nil,   nil,   nil,   nil,   nil,   nil,   -17,   -39,   -49,   -69 ]

racc_goto_default = [
   nil,   nil,   nil,     3,     4,     5,     6,     7,     8,     9,
    10,    11,    12,    13,    14,    15,   nil,   nil,   nil,   nil ]

racc_reduce_table = [
  0, 0, :racc_error,
  0, 36, :_reduce_1,
  1, 36, :_reduce_2,
  1, 37, :_reduce_3,
  3, 37, :_reduce_4,
  2, 37, :_reduce_5,
  1, 37, :_reduce_6,
  1, 38, :_reduce_none,
  1, 38, :_reduce_none,
  1, 38, :_reduce_none,
  1, 38, :_reduce_none,
  1, 38, :_reduce_none,
  1, 38, :_reduce_none,
  1, 38, :_reduce_none,
  1, 38, :_reduce_none,
  1, 38, :_reduce_none,
  1, 38, :_reduce_none,
  1, 38, :_reduce_none,
  3, 38, :_reduce_18,
  1, 39, :_reduce_none,
  1, 39, :_reduce_none,
  1, 40, :_reduce_21,
  1, 40, :_reduce_22,
  1, 40, :_reduce_23,
  1, 40, :_reduce_24,
  1, 40, :_reduce_25,
  2, 41, :_reduce_26,
  4, 41, :_reduce_27,
  3, 41, :_reduce_28,
  2, 51, :_reduce_29,
  3, 51, :_reduce_30,
  1, 52, :_reduce_31,
  3, 52, :_reduce_32,
  2, 42, :_reduce_33,
  3, 42, :_reduce_34,
  3, 42, :_reduce_35,
  3, 42, :_reduce_36,
  3, 42, :_reduce_37,
  3, 42, :_reduce_38,
  3, 42, :_reduce_39,
  3, 42, :_reduce_40,
  3, 42, :_reduce_41,
  3, 42, :_reduce_42,
  3, 42, :_reduce_43,
  3, 42, :_reduce_44,
  3, 42, :_reduce_45,
  1, 43, :_reduce_46,
  3, 44, :_reduce_47,
  1, 45, :_reduce_48,
  3, 46, :_reduce_49,
  3, 53, :_reduce_50,
  3, 47, :_reduce_51,
  6, 47, :_reduce_52,
  0, 54, :_reduce_53,
  1, 54, :_reduce_54,
  3, 54, :_reduce_55,
  3, 48, :_reduce_56,
  3, 49, :_reduce_57,
  3, 50, :_reduce_58 ]

racc_reduce_n = 59

racc_shift_n = 95

racc_token_table = {
  false => 0,
  :error => 1,
  :IF => 2,
  :DEF => 3,
  :CLASS => 4,
  :NEWLINE => 5,
  :NUMBER => 6,
  :STRING => 7,
  :TRUE => 8,
  :FALSE => 9,
  :NIL => 10,
  :IDENTIFIER => 11,
  :CONSTANT => 12,
  :INDENT => 13,
  :DEDENT => 14,
  :WHILE => 15,
  "." => 16,
  "!" => 17,
  "*" => 18,
  "/" => 19,
  "+" => 20,
  "-" => 21,
  ">" => 22,
  ">=" => 23,
  "<" => 24,
  "<=" => 25,
  "==" => 26,
  "!=" => 27,
  "&&" => 28,
  "||" => 29,
  "=" => 30,
  "," => 31,
  "(" => 32,
  ")" => 33,
  ";" => 34 }

racc_nt_base = 35

racc_use_result_var = true

Racc_arg = [
  racc_action_table,
  racc_action_check,
  racc_action_default,
  racc_action_pointer,
  racc_goto_table,
  racc_goto_check,
  racc_goto_default,
  racc_goto_pointer,
  racc_nt_base,
  racc_reduce_table,
  racc_token_table,
  racc_shift_n,
  racc_reduce_n,
  racc_use_result_var ]

Racc_token_to_s_table = [
  "$end",
  "error",
  "IF",
  "DEF",
  "CLASS",
  "NEWLINE",
  "NUMBER",
  "STRING",
  "TRUE",
  "FALSE",
  "NIL",
  "IDENTIFIER",
  "CONSTANT",
  "INDENT",
  "DEDENT",
  "WHILE",
  "\".\"",
  "\"!\"",
  "\"*\"",
  "\"/\"",
  "\"+\"",
  "\"-\"",
  "\">\"",
  "\">=\"",
  "\"<\"",
  "\"<=\"",
  "\"==\"",
  "\"!=\"",
  "\"&&\"",
  "\"||\"",
  "\"=\"",
  "\",\"",
  "\"(\"",
  "\")\"",
  "\";\"",
  "$start",
  "Program",
  "Expressions",
  "Expression",
  "Terminator",
  "Literal",
  "Call",
  "Operator",
  "GetConstant",
  "SetConstant",
  "GetLocal",
  "SetLocal",
  "Def",
  "Class",
  "If",
  "While",
  "Arguments",
  "ArgList",
  "Block",
  "ParamList" ]

Racc_debug_parser = false

##### State transition tables end #####

# reduce 0 omitted

module_eval(<<'.,.,', 'grammar.y', 29)
  def _reduce_1(val, _values, result)
     result = Nodes.new([]) 
    result
  end
.,.,

module_eval(<<'.,.,', 'grammar.y', 30)
  def _reduce_2(val, _values, result)
     result = val[0] 
    result
  end
.,.,

module_eval(<<'.,.,', 'grammar.y', 34)
  def _reduce_3(val, _values, result)
     result = Nodes.new(val) 
    result
  end
.,.,

module_eval(<<'.,.,', 'grammar.y', 35)
  def _reduce_4(val, _values, result)
     result = val[0] << val[2] 
    result
  end
.,.,

module_eval(<<'.,.,', 'grammar.y', 36)
  def _reduce_5(val, _values, result)
     result = val[0] 
    result
  end
.,.,

module_eval(<<'.,.,', 'grammar.y', 37)
  def _reduce_6(val, _values, result)
     result = Nodes.new([]) 
    result
  end
.,.,

# reduce 7 omitted

# reduce 8 omitted

# reduce 9 omitted

# reduce 10 omitted

# reduce 11 omitted

# reduce 12 omitted

# reduce 13 omitted

# reduce 14 omitted

# reduce 15 omitted

# reduce 16 omitted

# reduce 17 omitted

module_eval(<<'.,.,', 'grammar.y', 52)
  def _reduce_18(val, _values, result)
     result = val[1] 
    result
  end
.,.,

# reduce 19 omitted

# reduce 20 omitted

module_eval(<<'.,.,', 'grammar.y', 61)
  def _reduce_21(val, _values, result)
     result = NumberNode.new(val[0]) 
    result
  end
.,.,

module_eval(<<'.,.,', 'grammar.y', 62)
  def _reduce_22(val, _values, result)
     result = StringNode.new(val[0]) 
    result
  end
.,.,

module_eval(<<'.,.,', 'grammar.y', 63)
  def _reduce_23(val, _values, result)
     result = TrueNode.new 
    result
  end
.,.,

module_eval(<<'.,.,', 'grammar.y', 64)
  def _reduce_24(val, _values, result)
     result = FalseNode.new 
    result
  end
.,.,

module_eval(<<'.,.,', 'grammar.y', 65)
  def _reduce_25(val, _values, result)
     result = NilNode.new 
    result
  end
.,.,

module_eval(<<'.,.,', 'grammar.y', 69)
  def _reduce_26(val, _values, result)
     result = CallNode.new(nil, val[0], val[1]) 
    result
  end
.,.,

module_eval(<<'.,.,', 'grammar.y', 71)
  def _reduce_27(val, _values, result)
     result = CallNode.new(val[0], val[2], val[3]) 
    result
  end
.,.,

module_eval(<<'.,.,', 'grammar.y', 72)
  def _reduce_28(val, _values, result)
     result = CallNode.new(val[0], val[2], []) 
    result
  end
.,.,

module_eval(<<'.,.,', 'grammar.y', 76)
  def _reduce_29(val, _values, result)
     result = [] 
    result
  end
.,.,

module_eval(<<'.,.,', 'grammar.y', 77)
  def _reduce_30(val, _values, result)
     result = val[1] 
    result
  end
.,.,

module_eval(<<'.,.,', 'grammar.y', 81)
  def _reduce_31(val, _values, result)
     result = val 
    result
  end
.,.,

module_eval(<<'.,.,', 'grammar.y', 82)
  def _reduce_32(val, _values, result)
     result = val[0] << val[2] 
    result
  end
.,.,

module_eval(<<'.,.,', 'grammar.y', 86)
  def _reduce_33(val, _values, result)
     result = CallNode.new(val[1], val[0], []) 
    result
  end
.,.,

module_eval(<<'.,.,', 'grammar.y', 87)
  def _reduce_34(val, _values, result)
     result = CallNode.new(val[0], val[1], [val[2]]) 
    result
  end
.,.,

module_eval(<<'.,.,', 'grammar.y', 88)
  def _reduce_35(val, _values, result)
     result = CallNode.new(val[0], val[1], [val[2]]) 
    result
  end
.,.,

module_eval(<<'.,.,', 'grammar.y', 89)
  def _reduce_36(val, _values, result)
     result = CallNode.new(val[0], val[1], [val[2]]) 
    result
  end
.,.,

module_eval(<<'.,.,', 'grammar.y', 90)
  def _reduce_37(val, _values, result)
     result = CallNode.new(val[0], val[1], [val[2]]) 
    result
  end
.,.,

module_eval(<<'.,.,', 'grammar.y', 91)
  def _reduce_38(val, _values, result)
     result = CallNode.new(val[0], val[1], [val[2]]) 
    result
  end
.,.,

module_eval(<<'.,.,', 'grammar.y', 92)
  def _reduce_39(val, _values, result)
     result = CallNode.new(val[0], val[1], [val[2]]) 
    result
  end
.,.,

module_eval(<<'.,.,', 'grammar.y', 93)
  def _reduce_40(val, _values, result)
     result = CallNode.new(val[0], val[1], [val[2]]) 
    result
  end
.,.,

module_eval(<<'.,.,', 'grammar.y', 94)
  def _reduce_41(val, _values, result)
     result = CallNode.new(val[0], val[1], [val[2]]) 
    result
  end
.,.,

module_eval(<<'.,.,', 'grammar.y', 95)
  def _reduce_42(val, _values, result)
     result = CallNode.new(val[0], val[1], [val[2]]) 
    result
  end
.,.,

module_eval(<<'.,.,', 'grammar.y', 96)
  def _reduce_43(val, _values, result)
     result = CallNode.new(val[0], val[1], [val[2]]) 
    result
  end
.,.,

module_eval(<<'.,.,', 'grammar.y', 97)
  def _reduce_44(val, _values, result)
     result = CallNode.new(val[0], val[1], [val[2]]) 
    result
  end
.,.,

module_eval(<<'.,.,', 'grammar.y', 98)
  def _reduce_45(val, _values, result)
     result = CallNode.new(val[0], val[1], [val[2]]) 
    result
  end
.,.,

module_eval(<<'.,.,', 'grammar.y', 102)
  def _reduce_46(val, _values, result)
     result = GetConstantNode.new(val[0]) 
    result
  end
.,.,

module_eval(<<'.,.,', 'grammar.y', 106)
  def _reduce_47(val, _values, result)
     result = SetConstantNode.new(val[0], val[2]) 
    result
  end
.,.,

module_eval(<<'.,.,', 'grammar.y', 110)
  def _reduce_48(val, _values, result)
     result = GetLocalNode.new(val[0]) 
    result
  end
.,.,

module_eval(<<'.,.,', 'grammar.y', 114)
  def _reduce_49(val, _values, result)
     result = SetLocalNode.new(val[0], val[2]) 
    result
  end
.,.,

module_eval(<<'.,.,', 'grammar.y', 118)
  def _reduce_50(val, _values, result)
     result = val[1] 
    result
  end
.,.,

module_eval(<<'.,.,', 'grammar.y', 122)
  def _reduce_51(val, _values, result)
     result = DefNode.new(val[1], [], val[2]) 
    result
  end
.,.,

module_eval(<<'.,.,', 'grammar.y', 124)
  def _reduce_52(val, _values, result)
     result = DefNode.new(val[1], val[3], val[5]) 
    result
  end
.,.,

module_eval(<<'.,.,', 'grammar.y', 128)
  def _reduce_53(val, _values, result)
     result = [] 
    result
  end
.,.,

module_eval(<<'.,.,', 'grammar.y', 129)
  def _reduce_54(val, _values, result)
     result = val 
    result
  end
.,.,

module_eval(<<'.,.,', 'grammar.y', 130)
  def _reduce_55(val, _values, result)
     result = val[0] << val[2] 
    result
  end
.,.,

module_eval(<<'.,.,', 'grammar.y', 134)
  def _reduce_56(val, _values, result)
     result = ClassNode.new(val[1], val[2]) 
    result
  end
.,.,

module_eval(<<'.,.,', 'grammar.y', 138)
  def _reduce_57(val, _values, result)
     result = IfNode.new(val[1], val[2]) 
    result
  end
.,.,

module_eval(<<'.,.,', 'grammar.y', 142)
  def _reduce_58(val, _values, result)
     result = WhileNode.new(val[1], val[2] )
    result
  end
.,.,

def _reduce_none(val, _values, result)
  val[0]
end

end   # class Parser
