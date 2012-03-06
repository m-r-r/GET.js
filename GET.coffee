### 
GET.js v0.2
Copyright © 2012 Mickaël Raybaud-Roig, All rights reserved.
Licensed under the BSD 3-clause license, see the COPYING file for details
###

parse_query = (url) ->
    decoded = {}
    return unless url?
    query = ( url.split('?', 2) )[1]
    return unless query?
    args = query.split('&')

    for arg in args
        [key, value] = arg.split('=', 2)
        if key? and key.length > 0
            decoded[key.toLowerCase()] = value

    return decoded


if window? and document?
    window.$_GET = parse_query(document.location.href)
else if module?
    module.exports = {'parse_query': parse_query}
