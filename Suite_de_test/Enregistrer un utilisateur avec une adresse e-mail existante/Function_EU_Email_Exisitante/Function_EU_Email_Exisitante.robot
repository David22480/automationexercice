*** Settings ***
Resource    ../Config_EU_Email_Existante/Config_EU_Email_Exisitante.robot  
Resource    ../../Function_Global/Fuction_Global.robot    

*** Keywords ***
Entrez uti avec une adresse e-mail existante
    Meth generique Entrez l'adresse e-mail et le mot de passe corrects    ${nom_uti_ins_global}    ${Email_Valide_EU}
Affichage msg erreur email adress existante
    Element Should Be Visible    ${msg_erreur_email_existante_xpth}
    Element Should Contain    ${msg_erreur_email_existante_xpth}    Email Address already exist!