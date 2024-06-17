# Checks out the sources.
sources:
	mkdir -p src/.jiri_root
	cd src && jiri init -analytics-opt=false .
	cd src && jiri import -remote-branch=`git branch --show-current` manifest {{ justfile_directory() }}/.git
	cd src && jiri update -local-manifest
	echo TODO: Finish the checkout.

# Cleans up the sources.
clean:
	rm -rf src/
