***Settings***

Resource    ../resources/base.robot

Test Setup      Open Session
Test Teardown   Close Session

***Variables***
${NOME_BENEFICIARIO}    Isadora



***Test Cases***
Deve Efetuar Uma Transferência Com Sucesso
    Go to Login

    Click Text                          Transferir
    Sleep                               5
    Click Element                       id=br.com.smartbank:id/search
    Wait Until Element Is Visible       id=br.com.smartbank:id/textField     
    Input Text                          id=br.com.smartbank:id/textField        ${NOME_BENEFICIARIO}
    Wait Until Element Is Visible       id=br.com.smartbank:id/initials  
    Click Element                       id=br.com.smartbank:id/initials

    Wait Until Element Is Visible       id=br.com.smartbank:id/bankAccountInfos
    Click Element                       id=br.com.smartbank:id/photo

    Wait Until Page Contains            Quanto quer transferir       
    Input Text                          id=br.com.smartbank:id/textField        123
    Click Element                       id=br.com.smartbank:id/next

    Wait Until Element Is Visible       id=br.com.smartbank:id/touchArea
    Swipe                               778         1640        827         255

    Insert Authentication Password

    Sleep                               10

    Wait Until Element Is Visible       id=br.com.smartbank:id/showVoucher
    Click Element                       id=br.com.smartbank:id/showVoucher
    Wait Until Element Is Visible       id=br.com.smartbank:id/voucherTitle
    Swipe                               639         1664        685        456
    Swipe                               793         1579        772        357
    Click Element                       id=br.com.smartbank:id/close_voucher


    




