<div align="center">

# Grand Naturel

</div>

Le projet consiste en l'implémentation d'une classe GrandNaturel en langage Processing, permettant la manipulation de grands nombres naturels. Un grand nombre naturel est représenté sous forme d'un tableau d'entiers, chaque élément du tableau correspondant à un chiffre décimal du nombre, du moins au plus significatif.

## Classe GrandNaturel
La classe GrandNaturel est utilisée pour représenter des grands nombres naturels. Elle possède les fonctionnalités suivantes :

## Constructeurs
`GrandNaturel(int c)` : Construit un grand nombre naturel à partir d'un entier positif c. Le nombre est décomposé en chiffres décimaux et stocké dans un tableau.

`GrandNaturel(GrandNaturel n)` : Construit un grand nombre naturel en effectuant une copie d'un autre grand nombre naturel n.

## Méthodes
`nbChiffres()` : Retourne le nombre de chiffres dans le grand nombre.

`chiffre(int k)` : Retourne le chiffre à la position k (les positions commencent à 0). Si la position n'est pas valide, le chiffre est considéré comme zéro.

`toString()` : Retourne une représentation sous forme de chaîne de caractères du grand nombre, en concaténant les chiffres du moins significatif au plus significatif.

`egal(GrandNaturel n)` : Vérifie si le grand nombre est égal à un autre grand nombre n.

`inf(GrandNaturel n)` : Vérifie si le grand nombre est strictement inférieur à un autre grand nombre n.

`sup(GrandNaturel n)` : Vérifie si le grand nombre est strictement supérieur à un autre grand nombre n.

`normaliser()` : Réarrange les chiffres du grand nombre pour s'assurer qu'ils respectent les règles de représentation (pas de chiffres nuls à gauche).

`plus(int c)` : Effectue l'addition du grand nombre avec un entier positif c et retourne le résultat sous forme d'un nouveau grand nombre.

`plus(GrandNaturel n)` : Effectue l'addition du grand nombre avec un autre grand nombre n et retourne le résultat sous forme d'un nouveau grand nombre.

`mult(int c)` : Effectue la multiplication du grand nombre par un entier positif c et retourne le résultat sous forme d'un nouveau grand nombre.

##Tests

Le projet inclut des tests pour vérifier le bon fonctionnement de la classe `GrandNaturel`. Les tests couvrent les différentes fonctionnalités de la classe et permettent de s'assurer que les méthodes produisent les résultats attendus.

Les tests incluent des assertions pour vérifier les résultats. En cas de succès, un message de validation est affiché.

## Méthode Fibonacci

Le projet comprend également une méthode `fibo` qui calcule le n-ième nombre de Fibonacci en utilisant la classe `GrandNaturel`. La méthode fibo utilise une approche récursive pour calculer le nombre de Fibonacci.

N'hésitez pas à explorer le code source pour en savoir plus ...
