tag: user.multiple_cursors
-
breed multiple: user.multi_cursor_enable()
breed stop: user.multi_cursor_disable()
breed up: user.multi_cursor_add_above()
breed down: user.multi_cursor_add_below()
breed less: user.multi_cursor_select_fewer_occurrences()
breed more: user.multi_cursor_select_more_occurrences()
breed skip: user.multi_cursor_skip_occurrence()
breed all: user.multi_cursor_select_all_occurrences()
breed lines: user.multi_cursor_add_to_line_ends()
