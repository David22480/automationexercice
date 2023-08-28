*** Settings ***
Library    Selenium2Library
Library    String
Library    BuiltIn
Resource    ../Config_Global/Config_global.robot
   


*** Keywords ***
#les methode générique
Lancer le navigateur
   
    Open Browser    about:blank    gc
   # Create Webdriver    Chrome    chrome_options=--incognito
    Maximize Browser Window
Accédez à l'URL 'http://automationexercise.com'
    Go To    ${url_site}
Vérifiez que la page d'accueil est visible avec succès
    Wait Until Element Is Visible    ${bouton_inscrire_seconnecter}    30
Cliquez sur le bouton 'Inscription / Connexion'
    Click Link    ${bouton_inscrire_seconnecter}
Vérifiez que "Connecté en tant que nom d'utilisateur" est visib
    Wait Until Element Is Visible    ${verification_visibilite_compte_cree}
    Element Should Contain    ${verification_visibilite_compte_cree}    ${nom_uti_ins_global}
Vérifiez que "Connexion à votre compte" est visible
    Wait Until Element Is Visible    ${visibilite_Connexion_compte}

Cliquez sur le bouton "Supprimer le compte"
    Click Link    ${bouton_Supprimer_compte}
    Wait Until Element Is Visible    ${verification_visibilite_compte_supprimer}

Vérifiez que 'COMPTE SUPPRIMÉ !' est visible et cliquez sur le bouton 'Continuer'
    Element Should Contain    ${verification_visibilite_compte_supprimer}    Your account has been permanently deleted!
    Click Link    ${bouton_continu_sup}
    Wait Until Element Is Visible    ${page_home}
Meth generique Entrez l'adresse e-mail et le mot de passe corrects
    [Arguments]    ${nom}    ${adresse_mail}
    Input Text    ${nom_uti_inscription}    ${nom}
    Input Text    ${Email_inscription}    ${adresse_mail}
Meth generique insert email et mot de pass invalide
    [Arguments]    ${email_invalide}    ${password_invalide}
    Input Text    ${email_inscription_xpth}    ${email_invalide}
    Input Text    ${password_inscription_xpth}    ${password_invalide}



Entrez l'adresse e-mail et le mot de passe corrects
    Input Text    ${email_inscription_xpth}    ${email_inscription_valide_global}
    Input Text    ${password_inscription_xpth}    ${password_inscription_valide_global}
Cliquez sur le_bouton "Connexion"
    Click Button    ${bouton_login_xpth}
Cliquez sur le bouton "S'inscrire"
    Click Button    ${boutton_inscrire}

fermer_navigateur
    Close Browser

   
