## Badges

### Fonctionnement de base

L'application représente un système minimaliste comparable à Vodeclic.

Il y a un modèle Entreprise, lié à des Utilisateurs. Les utilisateurs sont liés à des Videos (l'utilisateur a vu la vidéo), et à des Badges (l'utilisateur possède ce badge).

Un seed est présent afin de générer les premières données.

Le header vous permet de vous connecter avec l'un des quatre utilisateurs déjà présents.

Lorsqu'un utilisateur est loggué, le fait de visiter la page 'show' du controller 'video' associera cette vidéo à cet utilisateur, ce qui compte comme une vision.

### EX 1 - Afficher les badges pour une Entreprise

Vous devez modifier l'action 'show' du controller 'compagnies' afin d'afficher les badges liés à cette entreprise, via les utilisateurs. L'aperçu de la vue doit ressembler à la vue 'users#show'.

* Une entreprise possède un badge si au moins un de ses utilisateurs possède ce badge
* Pour chaque badge que possède l'entreprise, vous devrez afficher combien de ses utilisateurs possèdent le badge

Notes : 

* Le CSS déjà présent dans l'application utilise un système de 'grid'. L'application utilise des helpers ruby afin de générer automatiquement les tags HTML appropriés, il est fortement recommandé de vous inspirer le la vue 'user#show'. Vous pouvez utiliser n'importe que type de collection dans le bloc. Les helpers sont disponibles via la gem 'r_kit', qui ne possède pas de documentation
* Un système de décorateur est déjà implémenté dans l'application. Nous n'avons utilisé aucune gem pour cela, vous pouvez vous inspirer du décorateur 'user' déjà existant

### EX 2 - Associer un badge à un utilisateur

Le but ici est de définir une mécanique qui permettra à l'application d'associer automatiquement un badge à un utilisateur, lorsque les conditions d'obtentions de ces badges sont remplies. Le système doit être le plus flexible possible, des badges supplémentaires peuvent être crées par l'équipe éditoriale, avec des conditions variées, il faut que l'intégration de ces nouveaux badges soit simple.

Voici les conditions d'obtentions des badges déjà présents
* Badge "HalfWay": un utilisateur doit avoir vu au moins deux vidéos
* Badge "AllWay": un utilisateur doit avoir vu toutes les vidéos
* Badge "SpeedRun" : un utilisateur doit avoir vu la vidéo "ruby classes" uniquement

### EX 3 - Revoir la mécanique des 'visions'

Le système de vison déjà implémenté n'est pas représentatif de l'action de l'utilisateur loggué. Il faut modifier l'implémentation existante en ajoutant d'abord un bouton 'play' sur la vue 'video#show'. C'est seulement lorsque l'utilisateur clique sur ce bouton que la nouvelle vision doit être enregistrée. La page ne doit pas se recharger, il est donc conseillé d'utiliser du Javascript/AJAX.

Il faudra en profiter pour refactorer l'association entre un utilisateur et une vidéo. Aujourd'hui, lorsqu'un utilisateur regarde plusieurs fois la même vidéo, un nouveau record est créé à chaque fois. Nous voulons éviter ces "doublons" dans la base de données, et ajouter une colonne d'itération dans la table de jointure, afin d'enregistrer de nombre de vues.

### Testing

Ajouter des tests avec RSpec et/ou Capybara

### Notes Additionnelles

* Il y a une faute d'ortographe sur le scaffold "compagnies"  (qui devrait s'écrire "companies"), merci de passer outre.
