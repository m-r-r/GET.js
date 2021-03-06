
/* 
GET.js v0.2
Copyright © 2012 Mickaël Raybaud-Roig, All rights reserved.
Licensed under the BSD 3-clause license, see the COPYING file for details
*/

(function() {
  var parse_query;

  parse_query = function(url) {
    var arg, args, decoded, key, query, value, _i, _len, _ref;
    decoded = {};
    if (url == null) return;
    query = (url.split('?', 2))[1];
    if (query == null) return;
    args = query.split('&');
    for (_i = 0, _len = args.length; _i < _len; _i++) {
      arg = args[_i];
      _ref = arg.split('=', 2), key = _ref[0], value = _ref[1];
      if ((key != null) && key.length > 0) decoded[key.toLowerCase()] = value;
    }
    return decoded;
  };

  if ((typeof window !== "undefined" && window !== null) && (typeof document !== "undefined" && document !== null)) {
    window.$_GET = parse_query(document.location.href);
  } else if (typeof module !== "undefined" && module !== null) {
    module.exports = {
      'parse_query': parse_query
    };
  }

}).call(this);
