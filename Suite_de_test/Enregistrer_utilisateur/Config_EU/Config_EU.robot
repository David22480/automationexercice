*** Variables ***
  


${visiblite_inscription_nouvelle_uti}    //div[@class="signup-form"]
# ${nom_uti_inscription}    //input[@data-qa="signup-name"]
# ${Email_inscription}    //input[@data-qa="signup-email"]

${visibilite_account_information}    //div[@class="login-form"]
${radio_button_Mr}    //input[@id="id_gender1"]
${radio_button_Mrs}    //input[@id="id_gender2"]
${password}    //input[@id="password"]  
${list_box_days}    //select[@id="days"]
${list_box_month}    //select[@id="months"]
${list_box_year}    //select[@id="years"]      
${chekbox_Sign up for our newsletter!}    //input[@id="newsletter"]
${chekbox_Receive special offers from our partners!}    //input[@id="optin"]

${prenom_first_name}    //input[@id="first_name"]
${nom_uti_last_name}    //input[@id="last_name"]
${entreprise}    //input[@id="company"]
${adress1}    //input[@id="address1"]
${adress2}    //input[@id="address2"]
${list_box_pays}    //select[@name="country"]
${etat}    //input[@id="state"]
${ville}    //input[@id="city"]  
${code_postal}    //input[@id="zipcode"]
${num_tel}    //input[@id="mobile_number"]
${bouton_cree_compte}    (//button[@type="submit"])[1]
${visibilite_compte_cree}    //div[@class="col-sm-9 col-sm-offset-1"]
${bouton_continu}    //a[@class="btn btn-primary"]

${bouton_Supprimer_compte}    //a[@href="/delete_account"]
${verification_visibilite_compte_supprimer}    //div[@class="col-sm-9 col-sm-offset-1"]
