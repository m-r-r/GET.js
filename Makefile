
all:	build/GET.js build/GET.min.js

build/:
	mkdir -p build

build/GET.js:	GET.coffee build/
	coffee -o build -c GET.coffee

build/GET.min.js:	build/GET.js
	head -n 6 build/GET.js | tr '\n' ' ' > build/GET.min.js
	jsmin build/GET.js >> build/GET.min.js

rm:
	rm -rv build

node:	build/GET.js
	mkdir -p build/node-package/lib
	cp build/GET.js build/node-package/lib
	cp package.json COPYING build/node-package
	cd build && tar -czvf GET.js.tgz node-package

rebuild:	rm all

.PHONY: rm rebuild node
