install:
	npm install

test:
	npm test -s

test-coverage:
	npm test -- --coverage --coverageProvider=v8

lint:
	npx eslint . --ext js,jsx

prettier:
	npx prettier . --write

check-prettier:
	bash check-prettier.sh

lint-fix:
	npx eslint . --fix --ext js,jsx

develop:
	npm start

build:
	rm -rf dist
	NODE_ENV=production npx webpack
