all:	GET.js GET.min.js node

GET.js:	GET.coffee
	coffee -c GET.coffee

GET.min.js:	GET.js
	head -n 6 GET.js | tr '\n' ' ' > GET.min.js
	jsmin GET.js >> GET.min.js

node:	GET.js
	mkdir -p node_modules/GET.js
	cp -v package.json GET.js node_modules/GET.js/

rm:
	rm *.js

rebuild:	rm all

.PHONY: node rm rebuild
