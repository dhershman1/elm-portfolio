# Elm Dusty Codes

Elm front end for dusty codes portfolio

## How To

> Make sure you have elm installed using `npm i -g elm`

- Clone this repo
- `cd` into the repo folder

### For Preview

- Run `elm make src/Main.elm --output elm.js`
- Open the index.html file

### For Dev

> Make sure to have elm-live installed using `npm install --global elm-live@next`

- Run `elm-live src/Main.elm -H -u -o -- --output=elm.js`
- Open the started server in your browser

### For Prod

> You will need an uglifier like uglifyjs or terser in order to compress/mangle the prod code

- Run `elm make src/Main.elm --output elm.js --optimize`
- Run this js file through something like uglify to compress and mangle
  - Using uglify:
  ```cli
    $ uglifyjs elm.js --compress 'pure_funcs="F2,F3,F4,F5,F6,F7,F8,F9,A2,A3,A4,A5,A6,A7,A8,A9",pure_getters=true,keep_fargs=false,unsafe_comps=true,unsafe=true,passes=2' --output=elm.js && uglifyjs elm.js --mangle --output=elm.js
  ```
  - Using Terser:
  ```cli
    $ terser elm.js --config-file terser.config.json --compress --mangle --output=elm.js
  ```
