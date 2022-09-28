mode: command
and mode: user.ruby
mode: command
and mode: user.auto_lang
and code.language: ruby
-
tag(): user.code_imperative
tag(): user.code_object_oriented

tag(): user.code_comment_line
tag(): user.code_comment_documentation
tag(): user.code_data_bool
tag(): user.code_data_null
tag(): user.code_functions
tag(): user.code_libraries
tag(): user.code_operators_array
tag(): user.code_operators_assignment
tag(): user.code_operators_bitwise
tag(): user.code_operators_lambda
tag(): user.code_operators_math

settings():
    user.code_private_function_formatter = "SNAKE_CASE"
    user.code_protected_function_formatter = "SNAKE_CASE"
    user.code_public_function_formatter = "SNAKE_CASE"
    user.code_private_variable_formatter = "SNAKE_CASE"
    user.code_protected_variable_formatter = "SNAKE_CASE"
    user.code_public_variable_formatter = "SNAKE_CASE"

<user.operator> pipe:
    insert("||")
    key(left)

# NOTE: this command is created for backward compatibility, but the documentation comments are not actually strings in Ruby.
dock string:
    user.code_comment_documentation()

<user.operator> end: "end"
<user.operator> begin: "begin"
<user.operator> rescue: "rescue "
<user.operator> module: "module "
<user.operator> length: ".length"

^instance <user.text>$:
    insert("@")
    user.code_public_variable_formatter(text)


(nail | null | nil | nile): "nil"

<user.operator> each: user.code_state_for_each()

<user.operator> quote var:
  insert("#{}")
  key(left)

<user.operator> log puts:
  insert('puts ""')
  key(left)

<user.operator> log print:
  insert('print ""')
  key(left)

<user.operator> ({user.code_keyword}+): 
  user.code_keyword(code_keyword_list)

state spec require: "require 'rspec/core'"
state spec describe: "RSpec.describe '' do"
state spec it: "it '' do"
