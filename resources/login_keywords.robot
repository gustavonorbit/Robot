*** Settings ***
Library    SeleniumLibrary
Library    DataDriver    file=..//data//login_data.xlsx 
Test Setup    Abrir Navegador     
Test Teardown     Fechar Navegador
*** Variables ***
${URL}    https://www.saucedemo.com/

*** Keywords ***
Abrir Navegador 
    Open Browser    ${URL}    chrome
    Maximize Browser Window
    
Fechar Navegador
    Close All Browsers   

*** Test Cases ***
Open Website
    Log To Console    Navegador Aberto com sucesso!

