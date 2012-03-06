# GET.js

GET.js helps to retreive the data passed in a URL query string.

It can be used in a browser or in [Node.js](http://nodejs.org)

## Installation

Just download the script and include it in your page, like this:

    <script type='text/javascript' src='GET.js'></script>

There is also a minified version:

    <script type='text/javascript' src='GET.min.js'></script>

GET.js can also be used in [node.js](http://nodejs.org) and is available through the [npm](http://npmjs.org):

    npm install GET.js

## Usage

If you use GET.js in a Web browser, you can access the data in the query string of the current page through the `$_GET` array:

    console.log(document.location.href); // foo.html?bar=baz&hello=world
    console.log($_GET['bar']); // baz
    console.log($_GET['hello']); // world

You can also use the `parse_query` function to parse the query string of another URL:

    var url = 'http://foo.bar/?a=1&b=2&c=3';
    console.log(parse_query(url)); // {a: 1, b: 2, c: 3}

If you have installed GET.js through the [npm](http://npmjs.org), you can use it in [node.js](http://nodejs.org) like this:

    var GETjs = require('GET.js');  // import it first

    var url = 'http://foo.bar/?a=1&b=2&c=3';
    GETjs.parse_query(url); // {a: 1, b: 2, c: 3} // Use it as in the browser


## Licence

GET.js is licenced under the BSD 3-clauses license, see the `COPYING` file for details ...


*Have fun !*
