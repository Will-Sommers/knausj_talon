#(jay son | jason ): "json"
#(http | htp): "http"
#tls: "tls"
#M D five: "md5"
#word (regex | rejex): "regex"
#word queue: "queue"
#word eye: "eye"
#word iter: "iter"
#word no: "NULL"
#word cmd: "cmd"
#word dup: "dup"
#word shell: "shell".
zoom in: edit.zoom_in()
zoom out: edit.zoom_out()
zoom reset: edit.zoom_reset()
scroll up: edit.page_up()
scroll down: edit.page_down()
copy that: edit.copy()
cut that: edit.cut()
(pace | paste) that: edit.paste()
show clip:
	key(cmd-shift-v)
	sleep(100ms)
(pace | paste) <user.ordinals_small>:
	key(cmd-shift-v)
	sleep(100ms)
	insert("{user.ordinals_small}")
	sleep(100ms)
(undo that | nope): edit.undo()
(redo that | yes indeed): edit.redo()
paste match: edit.paste_match_style()
file save: edit.save()
wipe: key(backspace)    
disk: edit.save()
disk oliver: edit.save_all()
padding: 
	insert("  ") 
	key(left)
slap: edit.line_insert_down()

emoji scout [<user.text>]:
	key(cmd-ctrl-space)
	sleep(200ms)
	insert(user.text or "")