# Patterns matching CSS files that should be minified. Files with a -min.css
# suffix will be ignored.
CSS_FILES = $(filter-out %-min.css,$(wildcard \
	_build/static/*.css \
	_build/static/css/*.css \
	_build/static/css/**/*.css \
))

# Patterns matching JS files that should be minified. Files with a -min.js
# suffix will be ignored.
JS_FILES = $(filter-out %-min.js,$(wildcard \
	_build/static/js/*.js \
	_build/static/js/**/*.js \
))

# Command to run to execute the YUI Compressor.
YUI_COMPRESSOR = java -jar _programs/yuicompressor-2.4.8pre.jar
 
# Flags to pass to the YUI Compressor for both CSS and JS.
YUI_COMPRESSOR_FLAGS = --charset utf-8 --verbose
 
CSS_MINIFIED = $(CSS_FILES:.css=-min.css)
JS_MINIFIED = $(JS_FILES:.js=-min.js)

# target: all - builds static HTML, minifies CSS and JS and uploads to S3.
all: build minify upload

clean:
	rm -rf _build

build:
	run-rstblog build

# target: minify - Minifies CSS and JS.
minify: minify-css minify-js
 
# target: minify-css - Minifies CSS.
minify-css: $(CSS_FILES) $(CSS_MINIFIED)
 
# target: minify-js - Minifies JS.
minify-js: $(JS_FILES) $(JS_MINIFIED)
 
%-min.css: %.css
	@echo '==> Minifying $<'
	$(YUI_COMPRESSOR) $(YUI_COMPRESSOR_FLAGS) --type css $< >$@
	@echo
 
%-min.js: %.js
	@echo '==> Minifying $<'
	$(YUI_COMPRESSOR) $(YUI_COMPRESSOR_FLAGS) --type js $< >$@
	@echo

serve:
	run-rstblog serve

upload:
	s3cmd sync -v --no-preserve _build/ s3://www.tssci-security.com
	@echo "Done..."

help:
	@egrep "^# target:" Makefile
