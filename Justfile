set allow-duplicate-variables

TITLE := "Manifest of repositories undergoing maintenance chores."

import  "just.d/project.just"
import  "tasks.just"
import? "local.just"

[private]
default: help
