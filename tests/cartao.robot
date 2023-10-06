***Settings***

Resource    ../resources/base.robot

Library    String
Library    Collections
Library    OperatingSystem

Test Setup      Open Session
Test Teardown   Close Session

***Variables***

${GET_NOME}=            //hierarchy/android.widget.FrameLayout/android.widget.LinearLayout/android.widget.FrameLayout/android.widget.LinearLayout/android.widget.FrameLayout/android.view.ViewGroup/android.widget.ScrollView/android.view.ViewGroup/android.view.ViewGroup[2]/android.view.ViewGroup/android.widget.TextView[2]
${GET_EMPRESA}=     	//hierarchy/android.widget.FrameLayout/android.widget.LinearLayout/android.widget.FrameLayout/android.widget.LinearLayout/android.widget.FrameLayout/android.view.ViewGroup/android.widget.ScrollView/android.view.ViewGroup/android.view.ViewGroup[2]/android.view.ViewGroup/android.widget.TextView[2]

${INPUT_NOME}=          br.com.smartbank:id/editText
${INPUT_EMPRESA}=       br.com.smartbank:id/editText

***Test Cases***
Deve Solicitar um Cartao Com Sucesso
    Go to Login

    Wait Until Element Is Visible       id=br.com.smartbank:id/dashboardCards

    Swipe                               810    322    758    1848

    Wait Until Element Is Visible       id=br.com.smartbank:id/menuDashboard

    Click Text                          Dados pessoais

    Wait Until Page Contains Element                    ${GET_NOME}
    ${NOME_COMPLETO}=                   Get Text        ${GET_NOME}
    @{NOME}=                            Split String    ${NOME_COMPLETO}
    Log                                                 ${NOME}
  

    Click Element                       xpath=//android.widget.ImageButton[@content-desc="Navigate up"]

    Sleep                               3

    Swipe                               836    1983    804    411

    Sleep                               1

    Swipe                               810    322    758    1848

    Click Text                          Dados da empresa

    Wait Until Page Contains Element                   ${GET_EMPRESA}
    ${NOME_EMPRESA}=                    Get Text       ${GET_EMPRESA}
    @{EMPRESA}=                         Split String   ${NOME_EMPRESA}
    Log                                                ${EMPRESA}

    Click Element                       xpath=//android.widget.ImageButton[@content-desc="Navigate up"]

    Sleep                               3

    Swipe                               836    1983    804    411

    Sleep                               1

    Click Text                          Cartões

    Wait Until Element Is Visible       id=br.com.smartbank:id/cardImage

    Click Text                          PRÓXIMO

    Sleep                               1

    Click Text                          PRÓXIMO

    Sleep                               1

    Click Text                          PEDIR

    Wait Until Page Contains Element    ${INPUT_NOME}
    Input Text                          ${INPUT_NOME}       ${NOME}[0]
    Input Text                          ${INPUT_NOME}       ${SPACE}
    Input Text                          ${INPUT_NOME}       ${NOME}[1]
    
    Click Text                          Próximo

    Wait Until Page Contains Element    ${INPUT_EMPRESA}
    Input Text                          ${INPUT_EMPRESA}       ${EMPRESA}[0]
    Input Text                          ${INPUT_EMPRESA}       ${SPACE}    
    Input Text                          ${INPUT_EMPRESA}       ${EMPRESA}[1]

    Click Text                          Próximo

    Wait Until Element Is Visible       id=br.com.smartbank:id/TitleAndZipcodeHolder
    Click Element                       id=br.com.smartbank:id/textinput_placeholder
    Input Text                          id=br.com.smartbank:id/textField    84020420

    Wait Until Element Is Visible       id=br.com.smartbank:id/hideFieldsHolder

    Click Element                       //hierarchy/android.widget.FrameLayout/android.widget.LinearLayout/android.widget.FrameLayout/android.widget.LinearLayout/android.widget.FrameLayout/android.view.ViewGroup/android.widget.ScrollView/android.view.ViewGroup/android.widget.RelativeLayout/android.widget.RelativeLayout/android.widget.LinearLayout[2]/android.widget.LinearLayout[1]/android.widget.LinearLayout/android.widget.LinearLayout[1]/android.widget.FrameLayout/android.widget.EditText
    Input Text                          //hierarchy/android.widget.FrameLayout/android.widget.LinearLayout/android.widget.FrameLayout/android.widget.LinearLayout/android.widget.FrameLayout/android.view.ViewGroup/android.widget.ScrollView/android.view.ViewGroup/android.widget.RelativeLayout/android.widget.RelativeLayout/android.widget.LinearLayout[2]/android.widget.LinearLayout[1]/android.widget.LinearLayout/android.widget.LinearLayout[1]/android.widget.FrameLayout/android.widget.EditText     123

    Click Text                          Próximo

    Wait Until Element is Visible       id=br.com.smartbank:id/termCheckBox
    Click Element                       id=br.com.smartbank:id/termCheckBox  

    Sleep                               10

    Click Element                       id=br.com.smartbank:id/nextButton

    Sleep                               10

    Wait Until Page Contains Element    id=br.com.smartbank:id/success_image

    Click Element                       id=br.com.smartbank:id/startButton

    Sleep                               10

    Wait Until Page Contains Element    id=br.com.smartbank:id/containerCardData

    Sleep                               10

    Wait Until Page Contains Element    id=br.com.smartbank:id/cardDigits

    ${NUM_CARTAO}   Get Text            id=br.com.smartbank:id/cardDigits






    



