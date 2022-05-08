/*Trouver tous les url des photos ainsi que tous les commentaire qui ont été posté par l'auteur de la photo A l'exercice précedent afficher aussi le nom de l'utilisateur qui a commenté ses propres photos */
-- ATTENTION TABLE USERS FAIT UNE BOUCLE ENTRE LES TABLES 398 LIGNES 
/*SELECT photos.url, comments.contents 
FROM users JOIN photos ON users.id = photos.user_id 
JOIN comments ON users.id = comments.user_id; 
*/

SELECT comments.contents, photos.url
FROM comments 
JOIN photos ON photos.id = comments.photo_id 
JOIN users On users.id = comments.user_id;

-- A l'exercice précedent afficher aussi le nom de l'utilisateur qui a commenté ses propres photos
-- retounre 398 lignes fais une boucle
/* SELECT users.username,photos.id, photos.url, comments.contents 
 FROM users 
 JOIN photos ON users.id = photos.user_id 
 JOIN comments ON users.id = comments.user_id;
*/
-- retourne 100 lignes
SELECT comments.contents, photos.url, users.username
FROM comments 
JOIN photos ON photos.id = comments.photo_id 
JOIN users On users.id = comments.user_id;
  --ORDER BY photos.id ASC;
  --ORDER BY users.id ASC;

-- 1. Pour tous les commentaires, montrer le contenu et le username de l'auteur
SELECT  comments.contents, users.username FROM comments JOIN users ON users.id = comments.user_id;

-- 2 Pour chaque commentaire, afficher son contenu et l'url de la photo à laquel le commentaire a été ajouté
SELECT comments.contents, photos.url FROM photos JOIN comments ON comments.photo_id = photos.id;

-- 3. Afficher l'url de chaque photo et le nom d'utilisateur de l'auteur
SELECT photos.url, users.username FROM photos JOIN users ON users.id = photos.user_id;

-- 4. Trouver tous les commentaires pour la photo d'id 3, avec le username de l'utilisateur qui a commenté
select comments.contents, users.username, photos.id 
FROM comments 
JOIN users ON users.id =comments.user_id
JOIN photos ON comments.photo_id= photos.id 
WHERE photos.id=3

-- 5. Trouver tous les url des photos ainsi que tous les commentaire qui ont été posté par l'auteur de la photo
SELECT photos.url, comments.contents 
FROM comments JOIN users ON users.id =comments.user_id
JOIN photos ON comments.photo_id= photos.id;

-- 6.Le nombre de likes pour la photo d’ID 4
SELECT COUNT(*) from likes where likes.photo_id = 4;