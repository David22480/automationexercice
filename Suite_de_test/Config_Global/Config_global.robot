
*** Variables ***
#VAR GLOBAL
${type_browser}    gc   
${url_site}    http://automationexercise.com
${bouton_inscrire_seconnecter}    //A[@href="/login"]
${Email_Valide_EU}    daoudchaouch1@gmail.com   

${email_inscription_valide_global}    daoudchaouch@gmail.com
${password_inscription_valide_global}    DavidSofrecom
${email_Incorrect}    hhdgggdgg@gmail.com
${password_Incorrect}    HHyyyGGGFFFddd
${nom_uti_ins_global}    daoud
${password_global}    DavidSofrecom
${day_birthsss}    2
${month_birth}    7  
${year_birth}    2000  
${pays_valeurs}    Canada

${prnom_global}    chaouch
${societe}     Sofrecom
${adr1}    les berge du Lac
${adr2}    a
${etat_global}    marié 
${ville_global}    tunis
${code_postal_global}    8000
${num_tel_global}    72345667
${verification_visibilite_compte_cree}    //ul[@class="nav navbar-nav"]
${bouton_Supprimer_compte}    //a[@href="/delete_account"]
${verification_visibilite_compte_supprimer}    //div[@class="col-sm-9 col-sm-offset-1"]
${bouton_continu_sup}    //a[@class="btn btn-primary"]
${page_home}    (//div[@class="carousel-inner"])[1]
${visibilite_Connexion_compte}    //div[@class="login-form"]
${email_inscription_xpth}    (//input[@name="email"])[1]
${password_inscription_xpth}    (//input[@name="password"])[1]
${bouton_login_xpth}    (//button[@class="btn btn-default"])[1]
#interface inscription
${nom_uti_inscription}    //input[@data-qa="signup-name"]
${Email_inscription}    //input[@data-qa="signup-email"]
${boutton_inscrire}    //button[@data-qa="signup-button"]



