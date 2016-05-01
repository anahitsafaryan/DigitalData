declare namespace tei = 'http://www.tei-c.org/ns/1.0';

for $play in collection('shaqespare')
    let $playname := $play//tei:fileDesc/tei:titleStmt/tei:title/text()



return 

<play>
    <title>{$playname}</title>
    <speakers>{for $speaker in distinct-values($play//tei:speaker)
        order by $speaker return <speaker>{$speaker}</speaker>}</speakers>
</play>