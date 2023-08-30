*** Settings ***
Resource    ../Config_Formulaire_contact/Config_Formulaire_contact.robot

Library    Selenium2Library

*** Keywords ***
Cliquez sur le bouton « Contactez-nous »
    Click Link    ${bouton_contacter_nous_xpth}
Vérifiez que « GET IN TOUCH » est visible
    Element Should Be Visible    ${visibilite_GET_IN_TOUCH}
 Entrez le nom, l'e-mail, le sujet et le message
     Input Text    ${name_contacter_nous_xpth}    daoud
     Input Text    ${email_contacter_nous_xpath}    daoud@gmail.compte
     Input Text    ${subject_contacter_nous_xpth}    testnom
     Input Text    ${message_contacter_nous_xpath}    zzzzzzzzzzzzzzzzzzzzzzz
Téléchargez le fichier
   

     
    
