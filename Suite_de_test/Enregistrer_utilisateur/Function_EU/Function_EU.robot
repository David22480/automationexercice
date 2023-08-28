*** Settings ***
Library    Selenium2Library
#Library    String
#Library    BuiltIn
Resource    ../Config_EU/Config_EU.robot   
Resource    ../../Function_Global/Fuction_Global.robot  

*** Keywords ***


Vérifiez 'Inscription d'un nouvel utilisateur !' est visible
    Wait Until Element Is Visible    ${visiblite_inscription_nouvelle_uti}    30
    Delete Cookie    name
    #Generate Random Email
     ${random_string}=     Generate Random String    10    [LOWER]
     ${email_random}=             Catenate    ${random_string}@gmail.com
     Set Suite Variable    ${generated_email}    ${email_random}
     Log    ${generated_email}
Entrez le nom et l'adresse e-mail
    # Input Text    ${nom_uti_inscription}    ${nom_uti_ins_global}
    # Input Text    ${Email_inscription}    ${generated_email}
    Meth generique Entrez l'adresse e-mail et le mot de passe corrects    ${nom_uti_ins_global}    ${generated_email}       
   
   

Vérifiez que 'ENTER ACCOUNT INFORMATION' est visible
    Wait Until Element Is Visible    ${visibilite_account_information}    30

Remplissez les détails : titre, nom, e-mail, mot de passe, date de naissance
    Click Element    ${radio_button_Mr}
    Input Text    ${password}    ${password_global}
    Select From List By Value    ${list_box_days}    ${day_birthsss}
    Select From List By Value    ${list_box_month}    ${month_birth}
    Select From List By Value    ${list_box_year}    ${year_birth}
 Cochez la case 'Inscrivez-vous à notre newsletter !'
    Click Element    ${chekbox_Sign up for our newsletter!}
Cochez la case "Recevez les offres spéciales de nos partenaires !"
    Click Element    ${chekbox_Receive special offers from our partners!}
Remplissez les détails : prénom, nom, société, adresse, adresse2, pays, état, ville, code postal, numéro de téléphone portable
    Input Text    ${prenom_first_name}    ${prnom_global}
    #Sleep    2
    Input Text    ${nom_uti_last_name}    ${nom_uti_ins_global}
    #Sleep    2
    Input Text    ${entreprise}    ${societe}
    Input Text    ${adress1}    ${adr1}
    Input Text    ${adress2}    ${adr2} 
    Select From List By Label    ${list_box_pays}    ${pays_valeurs}   
    Input Text    ${etat}    ${etat_global}
    Input Text    ${ville}    ${ville_global}
    Input Text    ${code_postal}    ${code_postal_global}
    Input Text    ${num_tel}    ${num_tel_global}
Cliquez sur le bouton "Créer un compte"
    Click Button    ${bouton_cree_compte}
Vérifiez que 'COMPTE CRÉÉ !' est visible
    Wait Until Element Is Visible    ${visibilite_compte_cree}    30
    Element Should Contain    ${visibilite_compte_cree}    Congratulations! Your new account has been successfully 
    
Cliquez sur le bouton "Continuer"
    Click Link    ${bouton_continu}
 


  