all: build upload

clean:
	rm -rf _build

build:
	run-rstblog build

serve:
	run-rstblog serve

upload:
	s3cmd sync -v --delete-removed _build/ s3://www.tssci-security.com
	@echo "Done..."
