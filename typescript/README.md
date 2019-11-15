ACTIONS-TEST TYPESCRIPT
====

### MEMO
```sh
$ npm init
This utility will walk you through creating a package.json file.
It only covers the most common items, and tries to guess sensible defaults.

See `npm help json` for definitive documentation on these fields
and exactly what they do.

Use `npm install <pkg>` afterwards to install a package and
save it as a dependency in the package.json file.

Press ^C at any time to quit.
package name: (typescript) actions-test-typescript
version: (1.0.0)
description:
entry point: (index.js)
test command:
git repository:
keywords:
author:
license: (ISC)
About to write to iyu/actions-test/typescript/package.json:

{
  "name": "actions-test-typescript",
  "version": "1.0.0",
  "description": "",
  "main": "index.js",
  "scripts": {
    "test": "echo \"Error: no test specified\" && exit 1"
  },
  "author": "",
  "license": "ISC"
}


Is this OK? (yes)
```

```sh
$ npm i -D typescript
npm notice created a lockfile as package-lock.json. You should commit this file.
npm WARN actions-test-typescript@1.0.0 No description
npm WARN actions-test-typescript@1.0.0 No repository field.

+ typescript@3.7.2
added 1 package from 1 contributor and audited 1 package in 1.309s
found 0 vulnerabilities
```

```sh
$ npm i -D eslint
npm WARN actions-test-typescript@1.0.0 No description
npm WARN actions-test-typescript@1.0.0 No repository field.

+ eslint@6.6.0
added 123 packages from 83 contributors and audited 179 packages in 5.405s
found 0 vulnerabilities
```

```sh
$ tsc --init
message TS6071: Successfully created a tsconfig.json file.
```

```sh
$ eslint --init
? How would you like to use ESLint? To check syntax and find problems
? What type of modules does your project use? CommonJS (require/exports)
? Which framework does your project use? None of these
? Does your project use TypeScript? Yes
? Where does your code run? Node
? What format do you want your config file to be in? YAML
The config that you've selected requires the following dependencies:

@typescript-eslint/eslint-plugin@latest @typescript-eslint/parser@latest
? Would you like to install them now with npm? Yes
Installing @typescript-eslint/eslint-plugin@latest, @typescript-eslint/parser@latest
npm WARN actions-test-typescript@1.0.0 No description
npm WARN actions-test-typescript@1.0.0 No repository field.

+ @typescript-eslint/parser@2.7.0
+ @typescript-eslint/eslint-plugin@2.7.0
added 8 packages from 9 contributors and audited 270 packages in 2.883s
found 0 vulnerabilities

Successfully created .eslintrc.yml file in iyu/actions-test/typescript
```
