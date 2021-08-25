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
- Run `npm run prod` to start a prod level build
