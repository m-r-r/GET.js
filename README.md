# GET.js

GET.js helps to retreive the data passed to the current page in the URL parameters.

## Usage
Once you have installed GET.js, you can access the URL parameters like in PHP:

    console.log(document.location.href); // foo.html?bar=baz&hello=world
    console.log($_GET['bar']); // baz
    console.log($_GET['hello']); // world

## Installation

Just download the script and include it in your page, like this:

    <script type='text/javascript' src='GET.js'></script>

There is also a minified version:

    <script type='text/javascript' src='GET.min.js'></script>

## Licence

GET.js is licenced under the BSD 3-clauses license, see the `COPYING` file for details ...


*Have fun !*