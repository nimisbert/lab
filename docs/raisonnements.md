# Les Raisonnements

#### Le contre-exemple
> Démontrer que: $\forall x \in E, P(x)$ est fausse.<br>
> Plus facile de prouver: $\exists x \in E, \neg P(x)$ <br>
> Exemple : 
> - Tout entier $\mathbb{N}$ est la somme de trois carrés.
> - $1 = a^2 + b^2 + c^2$
#### La contraposition
> Démontrer que: $P \implies Q$ est vraie. <br>
> Plus facile de prouver $\neg Q \implies \neg P$ <br>
> Exemple :
> - si $n^2$ est impair, alors $n$ est impair également.
> - si $n$ est pair, alors $n^2$ est pair également.
>   - $n = 2k$, un entier pair.
>   - $n^2 = (2k)^2 = 2 \times 2k^2 = 2l$, soit $l = 2k^2$ un entier
>   - $n$ pair $\implies n^2$ pair est vraie
>   - Par contraposition $n$ impair $\implies n^2$ impair est vraie aussi
#### L'absurde
> Démontrer que: $P \implies Q$ est vraie. <br>
> Il est possible de le démontrer par $P$ vrai $\implies \neg Q$ vrai. <br>
> Puis de trouver une contradiction. <br>
> Car seul le cas de l'implication P vrai $\implies$ Q faux, P implique Q est fausse.
#### L'analyse/synthèse
> Prouver l'existence d'un objet dont on ne connait pas la valeur.
> - Analyse: On cherche les conditions que doit vérifier l'objet
> - Synthèse: On vérifie si les conditions sont suffisantes pour trouver l'objet.
> - Démontrons qu'il existe un unique couple, $f_p$ paire, $f_i$ impaire de fonctions tq pour toute $f$ définie sur $\mathbb{R}$: $f = f_p + f_i$
>   - Analyse:
>       - $\forall x \in \mathbb{R}, f(x)=f_p(x)+f_i(x)$
>       - $\forall x \in \mathbb{R}, f(-x)=f_p(x)-f_i(x)$
>       - $f(x) + f(-x) = 2f_p(x)$
>       - $f(x) - f(-x) = 2f_i(x)$
>       - $f_p(x) = \frac{f(x)+f(-x)}{2}$
>       - $f_i(x) = \frac{f(x)-f(-x)}{2}$
>   - Synthèse:
>       - $f_p(-x) = f_p(x), f_p$ est une fonction paire
>       - $f_i(-x) = -f_i(x), f_i$ est une fonction impaire
>       - $f_p(x)+f_i(x) = 2\frac{f(x)}{2} = f(x)$
#### Dysjonction de cas
> Enumérer les différents cas de manière exhaustive et montrer que chaque cas est vrai.
#### Démontrer une équivalence
> Procèder en deux étapes pour prouver $P \Longleftrightarrow Q$:<br>
> - Démontrer que $P \implies Q$
> - Démontrer que $Q \implies P$ (réciproque)
> - Conclure que $P \Longleftrightarrow Q$
#### Récurrence 
> __Théorème__ <br>
> $P(n)$ prédicat sur un $n \in \mathbb{N}$. Soit $n_0 \in \mathbb{N}$. Si :<br>
> Initialisation: $P(n_0)$ vrai. <br>
> Hérédité: $\forall n \geq n_0, P(n) \implies P(n+1)$ vrai.<br>
> Alors: $P(n)$ vrai pour tout entier $n \geq n_0$
> ___
> Exemple: P(n): $6^n + 9$ est un multiple de $5$
> - Initialisation:
>   - Pour $n_0 = 0$
>   - $6^{n_0} + 9 = 10$, multiple de $5$
>   - $P(n_0)$ est vraie.
> - Hérédité:
>   - $\exists k \in \mathbb{N}|6^n + 9 = 5k$
>   - $6^{n+1}+9 = 5(6k-9)$
>   - $P(n+1)$ multiple de $5$ si $P(n)$ multiple de $5$.  
> - Conclusion:
>   - D'après le principe de récurrence $6^{n+1}+9$ multiple de $5$ est vrai.
#### Récurrence double
> ___
> __Théorème__ <br>
> $P(n)$ prédicat sur un $n \in \mathbb{N}$. Soit $n_0 \in \mathbb{N}$. Si :<br>
> Initialisation: $P(n_0)$ et $P(n_0+1)$ vrais. <br>
> Hérédité: Pour tout entier $n \geq n_0$, $P(n)\land P(n+1)\implies P(n+2)$ vrai. <br>
> Alors: $P(n)$ vrai pour tout entier $n\geq n_0$
> ___
#### Récurrence forte
> ___
> __Théorème__ <br>
> $P(n)$ prédicat sur un $n \in \mathbb{N}$. Soit $n_0 \in \mathbb{N}$. Si :<br>
> Initialisation: $P(n_0)$ vrai. <br>
> Hérédité: Pour tout entier $n \geq n_0$, <br>
> $P(n_0)\land P(n_0+1)\land ... \land P(n)\implies P(n+1)$ vrai. <br>
> Alors: $P(n)$ vrai pour tout entier $n\geq n_0$
> ___
> Exemple: <br>
> Tout entier $n\geq 2$ se décompose en produit de facteurs premiers. <br>
> - Initialisation
>   - $n_0 = 2$, $P(n_0) = P(2) = 2$, 2 est premier.
> - Hérédité
>   - Supposons $P(2), P(3), ..., P(n)$ vrai pour tout entier $n\geq 2$
>   - Disjonction de cas
>       - cas 1 : $n+1$ est premier
>           - $n+1$ se décompose en produit de facteurs premiers.<br>
>       - cas 2 : $n+1$ n'est pas premier 
>           - $\exists a\in \mathbb{N},\exists b\in \mathbb{N}|n=ab$
>           - $(a<n+1) \land (b<n+1)$, car $P(a)$ et $P(b)$ supposés vrai.
>           - Le produit de facteurs premiers est premier
>           - Donc, $P(n+1)$ est premier.
> - Conclusion
>   - $P(n)$: tout entier $n\geq 2$ se décompose en produit de facteurs premiers est vrai.