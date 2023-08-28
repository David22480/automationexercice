*** Settings ***
Resource    ../Config_connexion_Invalide/Config_connexion_Invalide.robot
Resource    ../../Function_Global/Fuction_Global.robot    
Resource    ../../Function_Global/Fuction_Global.robot


*** Keywords ***
Entrez une adresse e-mail et un mot de passe incorrects
    # Input Text    ${email_inscription_xpth}    ${email_Incorrect}
    # Input Text    ${password_inscription_xpth}    ${password_Incorrect}
    Meth generique insert email et mot de pass invalide    ${email_Incorrect}    ${password_Incorrect}
Vérifiez l'erreur 'Votre e-mail ou votre mot de passe est incorrect !' est visible
    Element Should Contain    ${message_erreur_xpat}    Your email or password is incorrect!
    