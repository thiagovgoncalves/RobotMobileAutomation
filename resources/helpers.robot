***Settings***

***Variables***
${BOTAO_LOGIN}      	id=br.com.smartbank:id/login
${USER}                 07319116871

***Keywords***
Insert Password
    Wait Until Element Is Visible       id=br.com.smartbank:id/keyboard
    Click Element                       id=br.com.smartbank:id/btn2
    Click Element                       id=br.com.smartbank:id/btn9
    Click Element                       id=br.com.smartbank:id/btn0
    Click Element                       id=br.com.smartbank:id/btn3
    Click Element                       id=br.com.smartbank:id/btn5
    Click Element                       id=br.com.smartbank:id/btn8

Insert Authentication Password
    Wait Until Element Is Visible       id=br.com.smartbank:id/keyboard
    Click Element                       id=br.com.smartbank:id/btn2
    Click Element                       id=br.com.smartbank:id/btn9
    Click Element                       id=br.com.smartbank:id/btn0
    Click Element                       id=br.com.smartbank:id/btn3


Go to Login
    Wait Until Element Is Visible       ${BOTAO_LOGIN}
    Click Element                       ${BOTAO_LOGIN}
    Wait Until Page Contains            Qual o seu CPF?

    Input Text                          id=br.com.smartbank:id/textField    ${USER}
    Click Text                          Próximo

    Insert Password

    Sleep                               10

    Wait Until Element Is Visible       id=br.com.smartbank:id/welcomeMessage 

    Sleep       10   


    


