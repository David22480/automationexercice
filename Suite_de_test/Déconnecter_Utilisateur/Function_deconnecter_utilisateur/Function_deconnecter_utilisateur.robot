*** Settings ***
Resource    ../Config_deconnecter_utilisateur/Config_deconnecter_utilisateur.robot
Resource    ../../Function_Global/Fuction_Global.robot   
Library    Selenium2Library

*** Keywords ***
Cliquez sur le bouton "Déconnexion"
    Click Link    ${bouton_se_deconnecter_xpth}
Vérifiez que l'utilisateur est dirigé vers la page de connexion
    Wait Until Element Is Visible    ${visibilite_Connexion_compte}    20