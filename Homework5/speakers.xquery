(:I took the collection not from my computer but from exist/dashboard (that's why the name is wrong, I don't know how to correct it in dashboard),
and used eXist-db localhost transformer :)

declare namespace tei = 'http://www.tei-c.org/ns/1.0';

for $play in collection('shaqespare')
    let $playname := $play//tei:fileDesc/tei:titleStmt/tei:title/text()

    for $part in distinct-values($play//tei:speaker)
        let $speaker := $part
 
order by $speaker
return 

<play>
    <title>{$playname}</title>
    <speaker>{$speaker}</speaker>
</play>

