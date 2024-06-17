set allow-duplicate-variables

TITLE        := "Manifest of repositories undergoing maintenance chores."
DESCRIPTION  := "https://github.com/gl-yziquel/maintenance"

import  "just.d/project.just"
import  "tasks.just"
import? "local.just"

[private]
default: help
