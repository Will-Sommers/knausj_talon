tag: user.javascript
-
tag(): user.code_imperative
tag(): user.code_object_oriented

tag(): user.code_comment_line
tag(): user.code_comment_block_c_like
tag(): user.code_data_bool
tag(): user.code_data_null
tag(): user.code_functions
tag(): user.code_functions_gui
tag(): user.code_libraries
tag(): user.code_operators_array
tag(): user.code_operators_assignment
tag(): user.code_operators_bitwise
tag(): user.code_operators_lambda
tag(): user.code_operators_math

settings():
    user.code_private_function_formatter = "PRIVATE_CAMEL_CASE"
    user.code_protected_function_formatter = "PRIVATE_CAMEL_CASE"
    user.code_public_function_formatter = "PRIVATE_CAMEL_CASE"
    user.code_private_variable_formatter = "PRIVATE_CAMEL_CASE"
    user.code_protected_variable_formatter = "PRIVATE_CAMEL_CASE"
    user.code_public_variable_formatter = "PRIVATE_CAMEL_CASE"

(op | is) strict equal: " === "
(op | is) strict not equal: " !== "

<user.operator> const: "const "

<user.operator> let: "let "

<user.operator> var: "var "

<user.operator> export: "export "

<user.operator> async: "async "

<user.operator> await: "await "

<user.operator> map:
    insert(".map()")
    key(left)

<user.operator> filter:
    insert(".filter()")
    key(left)

<user.operator> reduce:
    insert(".reduce()")
    key(left)

<user.operator> spread: "..."

<user.operator> length: insert(".length")

<user.operator> quote var:
  insert("${}")
  key(left)

<user.operator> log:
  insert("console.log()")
  key(left)

from import:
    insert(' from  ""')
    key("left")
