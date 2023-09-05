*** Settings ***
Resource    ../Function_Global/Fuction_Global.robot   
Resource    ./Fuction connexion valide/Fuction connextion valide.robot    



*** Test Cases ***
Cas de test 2: Connectez-vous avec l'adresse e-mail et le mot de passe corrects
    
    Lancer le navigateur
    Accédez à l'URL 'http://automationexercise.com'
    Vérifiez que la page d'accueil est visible avec succès
    Cliquez sur le bouton 'Inscription / Connexion'
    Vérifiez que "Connexion à votre compte" est visible

    Entrez l'adresse e-mail et le mot de passe corrects
    
    Cliquez sur le bouton "Connexion"
    Vérifiez que "Connecté en tant que nom d'utilisateur" est visib
    # Cliquez sur le bouton "Supprimer le compte"
    # Vérifiez que 'COMPTE SUPPRIMÉ !' est visible et cliquez sur le bouton 'Continuer'
    fermer_navigateur
    
    
   