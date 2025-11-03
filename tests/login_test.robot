*** Settings ***
Test Setup    Abrir Navegador     
Test Teardown     Fechar Navegador
Resource    ../resources/login_keywords.robot

*** Test Cases ***
Open Website
    Log To Console    Navegador Aberto com sucesso!

Log in 
    Fazer Login
    Sleep    3

Tela inicial
    Fazer Login
    Verificar Tela inicial
    Sleep    2  

Logar e Adicionar produto
    Fazer Login
    Adicionar Produto ao Carrinho
    Sleep    2