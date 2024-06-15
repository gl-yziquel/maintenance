import "_title.just"

PROJECT     := "current"
TITLE       := "Task runner for the " + PROJECT + " project."
DESCRIPTION := ""

[private]
@help:
	just _title "{{TITLE}}" "{{DESCRIPTION}}"
	just --list --unsorted --justfile "{{ module_file() }}"
	echo
