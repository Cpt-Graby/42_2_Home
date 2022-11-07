# 42_2_Home  
```
  __  ___        ___        _   _  _____  __  __  ____   
 /. |(__ \      (__ \      ( )_( )(  _  )(  \/  )( ___)  
(_  _)/ _/  ___  / _/  ___  ) _ (  )(_)(  )    (  )__)   
  (_)(____)(___)(____)(___)(_) (_)(_____)(_/\/\_)(____)  
```
  
## Presentation
42_2_Home est un script pour simplifier le transfert de ton GitHub perso à ta vogosphère.
Le script reste simple et ne fait pas que très peu de vérifications d'erreurs.  
Comme dirait certains: Un grand pouvoir implique de grandes responsabilités. Alors fait pas de conneries Jacky.

## Les commandes disponibles
```-S```  La commande Start permet de faire le transfert de ton git perso vers le git de la vogosphère  
```-F``` La commande Finish permet de faire un git push sur la vogosphère, une copie sur ton dossier git perso, puis un push dessus.  
    Cette commande peut être utilisée avec un deuxieme argument, qui te permettra de personnaliser le message de ton commit -m.    
```-P```  Ce flag permet d'afficher les chemins enregistrer dans le script.  

## Comment installer le script
Si vous etes paresseux, voici toutes les commandes en un seul bloc (1,2 & 3):  
```wget https://raw.githubusercontent.com/Cpt-Graby/42_2_Home/main/42_2_home.sh; chmod +x 42_2_home.sh; mv 42_2_Home.sh ~ ```  

Mais si tu preferes tout faire a la main:  
1) Télécharger ce script.  
``` wget https://raw.githubusercontent.com/Cpt-Graby/42_2_Home/main/42_2_home.sh; ```
2) Mettre le droit d'execution.  
```chmod +x 42_2_home.sh ```  
3) Le mettre dans un dossier home:  
ex: ```mv 42_2_Home.sh ~ ```  
  
Puis:  
4) Modifier tes variables path.(vim ou vscode ou nano si vous n'avez pas d'ame)  
5) Puis le lancer  
```./42_2_Home.sh```

## Le mot de la fin  
Si tu as des propositions d'améliorations, n'hésite pas à prendre contact.  
Cheers
