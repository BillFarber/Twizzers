xquery version "1.0-ml";
let $stylesheet-uri := "/stylesheet.xslt"
let $data-uri := "/stylesheet.xslt"
return xdmp:xslt-invoke($stylesheet-uri, fn:document($data-uri))
