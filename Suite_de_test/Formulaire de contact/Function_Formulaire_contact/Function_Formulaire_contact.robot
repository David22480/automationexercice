*** Settings ***
Resource    ../Config_Formulaire_contact/Config_Formulaire_contact.robot

Library    Selenium2Library

*** Keywords ***
Cliquez sur le bouton « Contactez-nous »
    Click Link    ${bouton_contacter_nous_xpth}
Vérifiez que « GET IN TOUCH » est visible
    Element Should Be Visible    ${visibilite_GET_IN_TOUCH}
    
