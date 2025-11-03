*** Settings ***
Library    SeleniumLibrary
##Library    DataDriver    file=..//data//login_data.xlsx

*** Variables ***
${URL}    https://www.saucedemo.com/

*** Keywords ***
Abrir Navegador 
    Open Browser    ${URL}    chrome
    Maximize Browser Window
    
Fazer Login
    Input Text    user-name    standard_user
    Input Password    password    secret_sauce
    Click Button    login-button

Verificar Tela inicial
    Title Should Be    Swag Labs

Fechar Navegador
    Close All Browsers   

Adicionar Produto ao Carrinho
    Click Button    add-to-cart-sauce-labs-backpack
    Wait Until Element Is Visible    xpath=//a[@data-test='shopping-cart-link']    timeout=10s
    Click Element                    xpath=//a[@data-test='shopping-cart-link']
    Page Should Contain    Sauce Labs
