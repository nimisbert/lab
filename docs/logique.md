# La Logique Mathématique

#### L'assertion (proposition)
> Un énoncé qui peut être vrai ou faux. <br>
> - 1+5 = 6 (P), P une proposition vraie
> - 1+1 = 6 (Q), Q une proposition fausse
> - 1+4 (R), R n'est pas une proposition
#### L'équivalence 
> Deux énoncés ayant la même table de vérité. <br>
> - P est Vrai 
> - Q est Vrai 
> - P $\equiv$ Q
#### Prédicat 
> Assertion qui dépends de paramêtres. <br>
> - (P) "L'équation $ax^2 + bx + c = 0$ admets deux racines distinctes."
#### Tautologie
> Prédicat toujours vrai. <br>
> - ax = ax 
#### Négation
> P $\equiv$ Vrai <br>
>  $\neg$ P $\equiv$ Faux <br>
>  $\neg$ $\neg$ P $\equiv$ Vrai <br>
> - $\neg$ (x $\in$ A) $\equiv$ x $\notin$ A
> - $\neg$ (x $\le$ 1) $\equiv$ x > 1
#### Conjonction
> Le ET ($\land$) logique. <br>
#### Disjonction 
> Le OU ($\lor$) logique. <br>
#### Commutativité de $\land$ et $\lor$
> - P $\land$ Q $\equiv$ Q $\land$ P
> - P $\lor$ Q $\equiv$ Q $\lor$ P
#### Associativité de $\land$ et $\lor$
> - P $\land$ (Q $\land$ R) $\equiv$ (P $\land$ Q) $\land$ R
> - P $\lor$ (Q $\lor$ R) $\equiv$ (P $\lor$ Q) $\lor$ R
#### Distributivité de $\land$ et $\lor$
> - P $\land$ (Q $\lor$ R) $\equiv$ (P $\land$ Q) $\lor$ (P $\land$ R)
> - P $\lor$ (Q $\land$ R) $\equiv$ (P $\lor$ Q) $\land$ (P $\lor$ R)
#### L'implication logique
> (P $\equiv$ Vrai) $\implies$ (Q $\equiv$ Vrai), P implique Q est Vrai. <br>
> (P $\equiv$ Vrai) $\implies$ (Q $\equiv$ Faux), P implique Q est Faux. <br> 
> (P $\equiv$ Faux) $\implies$ (Q $\equiv$ Vrai), P implique Q est Vrai. <br>
> (P $\equiv$ Faux) $\implies$ (Q $\equiv$ Faux), P implique Q est Vrai. <br>
> - Exemple, $P: x>3 \implies Q: x>1$
>   - $x > 3 \implies x > 1$, P implique Q est Vrai
>   - $x > 3 \implies x \le 1$, P implique Q est Faux
>   - $x \le 3 \implies x > 1$, P implique Q est Vrai
>   - $x \le 3 \implies x \le 1$, P implique Q est Vrai
#### Equivalence de l'implication logique
> $P \implies Q \equiv \neg P \lor Q$
#### La contraposée
> La contraposée de $P \implies Q$ est $\neg Q \implies \neg P$ 
> <br> de plus: $P \implies Q \equiv \neg Q \implies \neg P$
> <br> Une proposition et sa contraposé ont la même table de vérité.
> - $(x > 3 \implies x > 1) \equiv (x\le1 \implies x \le 3)$
#### La réciproque 
> La réciproque de $P \implies Q$ est $Q \implies P$
> <br> Une proposition et sa réciproque n'ont pas la même table de vérité.
#### L'équivalence logique
> L'équivalence logique ("si et seulement si") : <br>
> $(P \Longleftrightarrow Q) \equiv (P \implies Q) \land (Q \implies P)$
### Les Quantificateurs logiques
#### Quel que soit 
> Quel que soit $x$ appartenant à $A$, le prédicat $P(x)$ est vrai. <br>
> $\forall x \in A, P(x)$
> - Le carré d'un réel est toujours positif ou nul:<br>
>   $\forall x \in \mathbb{R}, x^2 \geq 0$
#### Il existe 
> In existe $x$ un élément de $A$ pour lequel le prédicat $P(x)$ est vrai. <br>
> $\exist x \in A, P(x)$
#### Tel que 
> $ \exists x \in A, P(x) $ <br>
> $ \exists x \in A; P(x) $ <br>
> $ \exists x \in A| P(x) $ <br>
#### Il existe un unique
> Il existe un unique élément de $A$ pour lequel le prédicat $P(x)$ est vrai. <br>
> $\exist ! x \in A, P(x)$
> - La définition d'une fonction bijective <br>
>   $\forall y \in \mathbb{R}, \exist ! x \in A | y = f(x)$
#### Négation avec quantificateurs
> $\neg [\forall x \in A| P(x)]$ $\equiv$ $[\exists x\in A|\neg P(x)]$ <br>
> $\neg [\exists x \in A| P(x)]$ $\equiv$ $[\forall x\in A|\neg P(x)]$ <br>
> Exemple avec l'énoncé d'une suite 
> - majorée : $\exists M \in \mathbb{R}, \forall n \in \mathbb{N}| u_n \leq M$ <br>
> - non majorée : $\forall M \in \mathbb{R}, \exists n \in \mathbb{N}| u_n > M$
#### Dépendances de quantificateurs
> Lorsque y dépends de x dans un énoncé comme : <br>
> $\forall x \in A, \exists y \in B | P(x, y)$ <br>
> Alors, il est préférable d'écrire : <br> 
> $\forall x \in A, \exists y_x \in B | P(x, y)$ <br>
> Exemple avec l'énoncé de la limite d'une suite : <br>
> - $\forall \epsilon > 0, \exists N \in \mathbb{N}; \forall n \in \mathbb{N}, n \geq N \implies |u_n - l| \leq \epsilon$
> - $\forall \epsilon > 0, \exists N_\epsilon \in \mathbb{N}; \forall n \in \mathbb{N}, n \geq N_\epsilon \implies |u_n - l| \leq \epsilon$