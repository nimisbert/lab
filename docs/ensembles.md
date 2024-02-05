# La Théorie des Ensembles

### Le concept d'Ensemble
#### Définition d'Ensemble
> Une collection d'objets appellés éléments, noté par une lettre majuscule. (informel)<br>
> - Un Ensemble: $E = \{1,2,4\}$ <br>
> - Tiers exclu: $1 \in E$, $3 \notin E$ <br>
> - L'Ensemble vide : $\emptyset = \{ \}$ <br>
> 
> Trois méthode de définition:
> - Extension: $E=\{1,2,3\}$
> - Graphique: Venn
> - Compréhension: $E=\{n\in \mathbb{N}|1\leq n \leq 3\}$
#### Le Cardinal
> Le nombre d'élement d'un ensemble, noté $Card(E)$.
> - $Card(\emptyset)=0$
> - $Card(\{ \emptyset \}) = 1$
> - $Card(\{ 1, 2, 4 \}) = 3$ 
> - Singleton: $Card(X) = 1$ 
> - Paire: $P = \{a,b\} = \{b,a\}; Card(P)=2$
### Relation entre les Ensembles
#### L'égalité
> Deux ensembles sont égaux si ils ont exactements les même éléments. <br>
> Dans le cas contraire ils sont différent. <br>
> $\{1,2,3\} = \{2,1,3\} \neq \{1,2,3,4\}$
#### L'inclusion
> E inclus dans G si tous les éléments de E sont des éléments de G.
> - $E = \{1,2\} \subset G = \{ 3,2,1 \}$
> 
> F n'est pas inclus dans G si au moins un élément de F n'est pas un élément de G.
> - $F = \{1,3,7\} \not\subset G = \{1,2,3\}$ 
>
> Propriété de l'inclusion, pour tout ensemble E:
> - $\emptyset \subset E$
> - $E \subset E$
> 
> Pour deux ensemble E et F, fini et $E\subset F$:
> - $Card(E) \leq Card(F)$
### Ensembles particuliers
#### Ensemble des parties
> L'Ensemble des parties $P(E)$ est l'ensemble de tous les ensembles inclus dans E.
> - $P(E) = \{ A | A\subset E\}$ 
> - $A \in P(E) \Longleftrightarrow A \subset E$
> - $E \in P(E)$
> - $\emptyset \in P(E)$
> - $P(\{1\})=\{\emptyset, \{1\}\}$
> - $P(\{1,2\})=\{\emptyset,\{1\},\{2\},\{1,2\}\}$
> - $P(\emptyset)=\{\emptyset\}$
> - $P(\{\emptyset\})=\{\emptyset, \{\emptyset\}\}$
> ___
> _Proposition_ <br>
> E un ensemble fini à $n$ éléments, alors: $Card(P(E)) = 2^n$ <br>
> ___
> _Proposition_ <br>
> $P(E)$ n'est jamais vide
> ___
#### Produit Cartésien d'Ensembles
> L'ensemble de tous les couples possibles des éléments de E et F:
> - $E\times F=\{ (x,y) | x\in E, y \in F \}$ <br>
> - $E_1 \times ... \times E_n = \{ (x_1, ..., x_n) | x_i \in E_i\}$
> 
> Propriété du produit Cartésien:
> - $E\times F=\emptyset \Longleftrightarrow E=\emptyset \lor F=\emptyset$ 
> - $E\times F\neq \emptyset \Longleftrightarrow E=\emptyset \land F=\emptyset$
> - $Card(E\times F)= Card(E)\times Card(F)$
### Opérateurs sur les ensembles
#### L'union
> L'ensemble contenant les éléments de A ou de B: $A \cup B$ <br>
> Exemple:
> - $A = {1,2,3}$
> - $B = {3,4,5}$
> - $A \cup B = {1,2,3,4,5}$
> - $A \cup B = x \in A \lor x \in B$
#### L'intersection
> L'ensemble contenant les éléments de A et de B: $A \cap B$ <br>
> Exemple:
> - $A = {1,2,3}$
> - $B = {3,4,5}$
> - $A \cap B = {3}$
> - $A \cap B = x \in A \land x \in B$
#### Propriétés des opérateurs
> La commutativité:
> - $A \cup B = B \cup A$
> - $A \cap B = B \cap A$
>
> L'associativité:
> - $A \cup (B \cup C) = (A \cup B) \cup C$
> - $A \cap (B \cap C) = (A \cap B) \cap C$
>
> Distributivité:
> - $A \cup (B \cap C) = (A \cup B) \cap (A \cup C)$
> - $A \cap (B \cup C) = (A \cap B) \cup (A \cap C)$
> 
> Le complémentaire: <br>
> $A$ un élément de $P(E)$. Le complémentaire de A dans E est l'ensemble des éléments de E qui ne sont pas dans A:
> - $E$ \ $A$ = $\bar{A} = \{x \in E | x \notin A\}$
> 
> De Morgan:
> - $\overline{ A \cup B } = \bar{A} \cap \bar{B} $
> - $\overline{ A \cap B } = \bar{A} \cup \bar{B} $
>
> ___
> __Théorème__ <br>
> $A$ et $B$ deux éléments de $P(E)$ alors :
> - $A \subset (A \cup B)$
> - $(A \cap B) \subset A$
> ___
> La Différence: <br>
> $A$ et $B$ deux éléments de $P(E)$. L'ensemble des élements de $A$ qui ne sont pas dans $B$:
> - $A$ \ $B$ = $A \cap \bar{B}$
> - $A$ \ $B$ = $\{ x \in A, x \notin B \}$
> ___
> _Proposition_ <br>
> $Card(A \cup B) = Card(A) + Card(B) - Card(A \cap B)$
> ___