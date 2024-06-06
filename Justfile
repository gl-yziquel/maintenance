import? "local.just"

[private]
default: help

[private]
@help:
	echo
	echo Manifest of repositories undergoing maintenance chores.
	echo ───────────────────────────────────────────────────────
	echo
	just --list --unsorted --justfile "{{ justfile() }}"

# Shows the readme file.
@readme:
	less README.md

# Shows the license.
@license:
	less LICENSE
