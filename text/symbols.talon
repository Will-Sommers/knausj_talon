question [mark]: "?"
(downscore | underscore): "_"
double dash: "--"
(bracket | brack | left bracket): "{"
(rbrack | are bracket | right bracket): "}"
triple quote: "'''"
(triple grave | triple back tick | gravy):
    insert("```")
patch {user.symbol_key}:
    edit.line_end()
    "{symbol_key}"
    edit.line_insert_down()    
(dot dot | dotdot): ".."
pebbles: "..."
(comma and | spamma): ", "
plus: "+"
arrow: "->"
dub arrow: "=>"
new line: "\\n"
carriage return: "\\r"
line feed: "\\r\\n"
spam: ", "
coal gap: ": "
pipe gap: " | "
boom: ". "
empty round: "()"
empty square: "[]"
empty curly: "{}"
empty diamond: "<>"
empty quad: '""'
empty twin: "''"
empty escaped quad: '\\"\\"'
empty escaped twin: "\\'\\'"
empty escaped round: '\\(\\)'
empty escaped curly: '\\{{\\}}'

``

tween <user.symbol_key>:
    '{symbol_key}{symbol_key}'
    key(left)
quad:
    '""'
    key(left)
twin:
    "''"
    key(left)
ski:
    '``'
    key(left)
escaped quad:
    '\\"\\"'
    key(left)
    key(left)
escaped twin:
    "\\'\\'"
    key(left)
    key(left)
round:
	insert("()")
	key(left)
escaped round:
    '\\(\\)'
    key(left)
    key(left)
escaped curly:
    '\\{{\\}}'
    key(left)
    key(left)
square: 
	insert("[]") 
	key(left)
curly: 
	insert("{}") 
	key(left)
diamond: 
	insert("<>") 
	key(left)
angle that:
    text = edit.selected_text()
    user.paste("<{text}>")
(square | square bracket) that:
    text = edit.selected_text()
    user.paste("[{text}]")
(bracket | brace) that:
    text = edit.selected_text()
    user.paste("{{{text}}}")
(parens | args) that:
    text = edit.selected_text()
    user.paste("({text})")
percent that:
    text = edit.selected_text()
    user.paste("%{text}%")
quote that:
    text = edit.selected_text()
    user.paste("'{text}'")
(double quote | dubquote) that:
    text = edit.selected_text()
    user.paste('"{text}"')
(grave | back tick) that:
    text = edit.selected_text()
    user.paste('`{text}`')
