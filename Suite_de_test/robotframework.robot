*** Settings ***
Library    RequestsLibrary

*** Variables ***
${BASE_URL}     https://leadres-sofrecom-academy.atlassian.net/
${USERNAME}     CHAOUCH DAOUD
${API_TOKEN}    ATATT3xFfGF0GDGZXKWNzhMUgG37zU51PLQT1Az2sIBjfuGl5wwocGCLhLdzKigkuPpiGMaCKlv0yCFGoZ2iCLQJXJEXOHEZK_fHM9BFEfS4r8zUW4P3i7igRZCwD969ox5dH5DXJimx7dQpRznr2Ix_v5ARrCDT2s7ZjFWPgDNwNNFr4nuri8E=2BFA3F7A

*** Test Cases ***
Report Test Result to Xray
    ${headers}=    Create Dictionary    Authorization=Basic ${USERNAME}:${API_TOKEN}
    ${data}=    Create Dictionary
    
    ...    tests=    [ 
    ...        { "testKey": "PROJECT-123", "status": "PASS" }
    ...    ]
    ${response}=    Post Request    ${BASE_URL}    json=${data}    headers=${headers}
    Should Be Equal As Integers    ${response.status_code}    200
