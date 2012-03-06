### 
GET.js v0.2
Copyright © 2012 Mickaël Raybaud-Roig, All rights reserved.
Licensed under the BSD 3-clause license, see the COPYING file for details
###

parse_query = (url) ->
    unless url?
        return
    query = ( url.split('?', 2) )[1]
    unless query?
        return
    args = query.split('&')
    decoded = {}

    for arg in args
        [key, value] = arg.split('?', 2)
        if key?
            decoded[(key).lower()] = value

    return decoded


if window? and document?
    window.$_GET = parse_query(document.location.href)
else if module?
    module.exports = {'parse_query': parse_query}
