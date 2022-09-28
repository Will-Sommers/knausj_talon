mode: command
and mode: user.typescript
mode: command
and mode: user.auto_lang
and code.language: typescript
-
tag(): user.javascript

is loose equal: " == "
is not loose equal: " != "
<user.operator> null coal: " ?? "


chain {user.code_chain_function}:
    insert(".{code_chain_function}()")

<user.operator> length: insert(".length")

<user.operator> log:
  insert("console.log()")
  key(left)

<user.operator> quote var:
  insert("${}")
  key(left)

<user.operator> spread: "..." 
<user.operator> ({user.code_keyword}+): user.code_keyword(code_keyword_list) 

push <user.cursorless_target> down:
    user.cursorless_vscode_command("editor.action.moveLinesDownAction", cursorless_target)