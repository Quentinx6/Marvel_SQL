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

SELECT first_name, last_name, (YEAR(NOW()) - YEAR(birth_date)) as age FROM `actors` WHERE YEAR(birth_date) < 1991 ORDER BY last_name, first_name ASC
````

## Afin d'afficher la liste des acteurs pour un film donné

Voici la requete : 

```sql

SELECT movies.title,actors.first_name,actors.last_name FROM linked INNER JOIN movies ON linked.id_movie=movies.id INNER JOIN actors ON linked.id_actor=actors.id WHERE movies.title="Avengers"

```

## Afin d'afficher la liste des films pour un acteur donné

Voici la requete :

```sql
SELECT movies.title,actors.first_name,actors.last_name FROM linked INNER JOIN movies ON linked.id_movie=movies.id INNER JOIN actors ON linked.id_actor=actors.id WHERE actors.first_name="Christopher"
```

## Afin d'ajouter un film

```sql
INSERT INTO movies VALUES ('0', "Avengers : ENDGAME", "Anthony et Joe Russo", "2019", "3:01", NOW(), NOW())
```

## Afin d'ajouter un acteur 

```sql
INSERT INTO actors VALUES ('0', 'Holland', 'Tom', '1996-06-01', NOW(), NOW())
````

## Afin de modifier un film

```sql
UPDATE movies SET title = 'Avengers' WHERE id = 1
```

## Afin de supprimer un acteur 

```sql
DELETE FROM actors WHERE id = 8
````

## Afin d'afficher les 3 derniers acteurs ajoutés

```sql
SELECT * FROM `actors` ORDER BY id DESC LIMIT 3
````
