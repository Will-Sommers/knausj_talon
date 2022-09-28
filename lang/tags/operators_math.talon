tag: user.code_operators_math
-

# math operators
<user.operator> (minus | subtract): user.code_operator_subtraction()
<user.operator> (plus | add): user.code_operator_addition()
<user.operator> (times | multiply): user.code_operator_multiplication()
<user.operator> divide: user.code_operator_division()
<user.operator> mod: user.code_operator_modulo()
(<user.operator> (power | exponent) | to the power [of]): user.code_operator_exponent()

# comparison operators
(<user.operator> | is) equal: user.code_operator_equal()
(<user.operator> | is) not equal: user.code_operator_not_equal()
(<user.operator> | is) (greater | more): user.code_operator_greater_than()
(<user.operator> | is) (less | below) [than]: user.code_operator_less_than()
(<user.operator> | is) greater [than] or equal: user.code_operator_greater_than_or_equal_to()
(<user.operator> | is) less [than] or equal: user.code_operator_less_than_or_equal_to()

# logical operators
(<user.operator> | logical) and: user.code_operator_and()
(<user.operator> | logical) or: user.code_operator_or()

# TODO: This operator should either be abstracted into a function or removed.
(<user.operator> | pad) colon: " : "
