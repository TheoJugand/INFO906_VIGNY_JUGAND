# INFO906_VIGNY_JUGAND

# Cette application permet de gérer des colis et de suivre leur acheminement


Chaque colis est caractérisé par:    
* un id (identifiant unique autogénéré)
* un poid (le poid du colis)
* une valeur
* une origine (le lieu de départ)
* une destination (la destination du colis)

Chaque colis possède un suivi afin de suivre leurs positions tout au long de leurs acheminements. Chaque suivi sont caractérisés par des étapes définies par :
* une latitude
* une longitude
* une date (date d'entrée de la position) 
* un emplacement (l'endroit où se trouve le colis à cette étape)
* un état (enregistrement, en attente, en acheminement, bloqué ou livré)


Cette application permet :
* D'ajouter un colis
* Visualiser un colis (à partir de son id)
* D'ajouter ou de modifier une étape à un colis


Les colis et leurs suivis sont stockés dans une base de données, on y accède à travers des entités JPA.

Un EJB session sans état permet de faire les opérations de création et de recherche des colis et des étapes.

# Organisation du projet

L'organisation du projet est répartis en 3 parties disctinctes.

## Partie JPA

L'application possède 2 objets persistant JPA (Java Persistence API). Un pour la gestion des colis et un autre pour la gestion des étapes qui son défini  respectivement par la classe Colis et la classe Etape :

[src/main/java/colis/jpa/Colis.java](src/main/java/colis/jpa/Colis.java) (implantation de l'entité Etape (entité JPA)).
[src/main/java/colis/jpa/Etape.java](src/main/java/colis/jpa/Etape.java) (implantation de l'entité Etape (entité JPA)).
[src/main/resources/META-INF/persistence.xml](src/main/resources/META-INF/persistence.xml) (descripteur standard JPA).

## Partie EJB

L'accès aux ressources se fait à travers l'EJB (Entreprise JavaBean) ColisEJB.
L'annotations @Stateless  signifie que l'EJB est sans état et  @LocalBean  signifie que c'est utilisable sans interface.

[src/main/java/colis/ejb/ColisEJB.java](src/main/java/colis/ejb/ColisEJB.java) EJB Stateless.

## Partie WEB

Afin de manipuler les colis, des servlet ont été mis en place pour faire les opérations suivantes : ajouter un colis, afficher un colis (à partir de son id), ajouter ou modifier une étape à un colis. L'affichage se fait par le biais de pages JSP (JavaServer Pages) qui sont dirigées par des servlets.

### Servlets :

[src/main/java/colis/servlet/AddColisServlet.java](src/main/java/colis/servlet/AddColisServlet.java)  (ajout d'un colis).
[src/main/java/colis/servlet/AddEtapeServlet.java](src/main/java/colis/servlet/AddEtapeServlet.java) (ajout d'une étape).
[src/main/java/colis/servlet/EditEtapeServlet.java](src/main/java/colis/servlet/EditEtapeServlet.java) (modification d'une étape).
[src/main/java/colis/servlet/ShowColisServlet.java](src/main/java/colis/servlet/ShowColisServlet.java) (affichage d'un colis à sa création).
[src/main/java/colis/servlet/ShowColisByIDServlet.java](src/main/java/colis/servlet/ShowColisByIDServlet.java) (affichage d'un colis à partir de son id).

### JSP :

[src/main/webapp/index.jsp](src/main/webapp/index.jsp)  (page d'accueil).
[src/main/webapp/addEtape.jsp](src/main/webapp/addEtape.jsp) (affichage de l'ajout d'une étape).
[src/main/webapp/editEtape.jsp](src/main/webapp/editEtape.jsp) (affichage de la modification d'une étape).
[src/main/webapp/showColis.jsp](src/main/webapp/showColis.jsp) (affichage d'un colis à sa création).
[src/main/webapp/showColisByID.jsp](src/main/webapp/showColisByID.jsp) (affichage d'un colis à partir de son id).

### CSS :

[src/main/webapp/index.css](src/main/webapp/index.css).

## Fonctionnement du projet

Pour utiliser l'appplication, il suffit de cloner le projet git ou de le télécharger et de l'importer dans un IDE java (sous forme de projet gradle). Il faut ensuite le déployer sur un serveur d'application JavaEE 8 (dans notre cas nous utilisons Wildfly). 

Voici la configuration que nous avons uitliser pour le serveur Jboss :

![config](/images/Screen1.png)

Lorsque le client web est déployé, on obtient la page suivante : 

![accueil](/images/Capture1.png)
 
On peut ajouter un colis en retrant les champs poids, valeur, origine et destination, et visualiser les colis en insérant leurs id (le 1er colis ajouté aura 1 comme valeur).

Lors de l'affichage d'un colis, on peut lui étiqueter des étapes ou alors les modifier.

![listeColis](/images/Capture3.png)

## Ressources

[https://www.wildfly.org/downloads/](https://www.wildfly.org/downloads/) (WildFly serveur d'applications Java EE)
