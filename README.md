## Badges

### Afficher les badges pour une Entreprise

* Les badges d'une entreprise sont la somme de tous les badges de chacun des utilisateurs associés à cette entreprise
* On travaillera sur les vues index et show

### Associer un badge à un utilisateur

* Définir des conditions d'obtention des badges
* Associer automatiquement un badge à un utilisateur si les conditions sont validées
* Condition "HalfWay": deux vidéos vues
* Condition "AllWay": toutes les vidéos vues
* Condition "SpeedRun" : Voir la vidéo "ruby classes" en premier

### Revoir la mécanique des 'visions'

* Aujourd'hui, lorsqu'un utilisateur loggé va sur la vue show du controller vidéo, une 'vision' est crée entre cet utilisateur et la vidéo
* On pourra modifier ce comportement, afin de créer une vision sur le click d'un bouton, en utilisant Javascript/AJAX
* Et en profiter pour refactorer le code back-end, afin d'ajouter un compteur de vues sur les records, plutot que de créer des doublons (ici, la date de vision ne nous intéresse pas)

### Testing

* Ajouter des tests avec RSpec et/ou Capybara
