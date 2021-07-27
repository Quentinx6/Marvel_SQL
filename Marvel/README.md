# Requete SQL
*Vous trouverez sur cette page toutes mes requete necessaire pour terminer l'exercice sur les bases de données Marvel* 

## Afin d'afficher les titres et dates de sorties des films du plus récent au plus ancien

Voici la requete : 

```sql
SELECT title, release_date FROM `movies` ORDER BY release_date DESC
```

## Afin d'afficher les noms, prénoms et ages des acteurs de plus de 30 ans dans l'ordre alphabétique

VOici la requete : 

```sql

SELECT first_name, last_name, birth_date FROM `actors` WHERE YEAR(birth_date) < 1991 ORDER BY last_name, first_name ASC
````

## Afin d'afficher la liste des acteurs pour un film donné

Voici la requete : 

```sql

SELECT title, last_name, first_name FROM `linked` INNER JOIN movies ON linked.id_movie = movies.id INNER JOIN actors ON linked.id_actor = actors.id WHERE movies.title = 'Avengers'

```

## Afin d'afficher la liste des films pour un acteur donné

Voici la requete :

```sql
SELECT title, last_name, first_name FROM `linked` INNER JOIN movies ON linked.id_movie = movies.id INNER JOIN actors ON linked.id_actor = actors.id WHERE actors.first_name = 'Evans'
```
