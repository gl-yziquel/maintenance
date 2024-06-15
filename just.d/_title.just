@_title TITLE DESCRIPTION="":
	echo
	echo "{{TITLE}}"
	echo "{{TITLE}}" | sed 's/./─/g'
	if [ "" != "{{DESCRIPTION}}" ]; then echo; fi
	if [ "" != "{{DESCRIPTION}}" ]; then echo "{{DESCRIPTION}}"; fi
	if [ "" != "{{DESCRIPTION}}" ]; then echo; fi
	echo
