# Les Applications

### Le concept d'Application
#### Une Correspondance
> $E$ et $F$ deux ensembles. Tout triplet ($E$, $F$, $\Gamma$) et une correspondance tel que $\Gamma$ est une partie de $E \times F$.
#### Une Fonction
> Une fonction est une correspondance $(E,F,\Gamma)$ vérifiant:<br>
> - $\forall x \in E, \forall y, y' \in F,$ <br>
> - $(x,y) \in \Gamma \land (x,y') \in \Gamma \implies y = y'$
> 
> Pour une fonction $(E,F,\Gamma)$ soit pour un $x \in E$ si il existe $y \in F$ :<br>
> - $y$ est l'image de $x$ noté $f(x)$ <br>
>   $x$ est l'antécédant de $y$ <br>
> - $f: E \rightarrow F$ <br> $x \rightarrow y = f(x)$
> 
> L'ensemble de définition $D_f$ est l'ensemble des $x$ ayant une image dans $F$. <br>
>
> $f$ une fonction de $E$ dans $F$ si $E=D_f$, alors $f$ est une application.
> 
> Deux applications sont égales si:
> - même ensemble de départ
> - même ensemble d'arrivé 
> - même graphe
> 
> L'application identité:
> - $Id_E: E \rightarrow F$ <br> $x \rightarrow x$
>
> La fonction: Tout élément de l'ensemble de départ à au plus une image.
>  
> L'application: Tout élément de l'ensemble de départ à une unique image.
#### L'indicatrice 
> Soit $A$ une partie de $E$, $\mathcal{1}_A$ est l'application: <br>
> - $E \rightarrow \{0, 1\}$
> - $x \rightarrow 1 ;$ si $x\in A$, $0$ sinon
> ___ 
> __Théorème__ 
> - $\mathcal{1}_{A \cap B} = \mathcal{1}_A \times \mathcal{1}_B$
> - $\mathcal{1}_{\bar{A}} = 1 - \mathcal{1}_A$
> 
> __Corollaire__
> - $\mathcal{1}_{A \cup B} = \mathcal{1}_A + \mathcal{1}_B - \mathcal{1}_A \times \mathcal{1}_B$
#### La composition 
> Soit $f: E \rightarrow G$ et $g: G \rightarrow F$,
> la composée de $f$ et $g$:<br>
> - $f \circ g: E \rightarrow G$ <br> $x \rightarrow g(f(x))$ 
> ___
> _Proposition_
> - $f: E \rightarrow F$
> - $f \circ Id_E = f \circ Id_E = f$ 
> 
> La composition est associative mais pas commutative. <br>
> Pour le cas particulier $f \circ g = g \circ f$, $f$ et $g$ commutent.
### Images
#### Image directe
> Soit $A$ une partie de $E$, on appelle image directe de $A$ par $f$, le sous-ensemble de $F$ noté $f(A)$ défini par:
> - $f(A) = \{f(x), x \in A\}$
> - $f(A) = \{y \in F, \exists x \in A, y=f(x)\}$
> 
> $f(x)$ un élément de $F$ <br>
> $f(\{x\})$ une partie de $F$ <br>
> $f(\emptyset)=\emptyset$ <br>
> $f(\{a\}) =\{f(a)\}$
> ___
> _Proposition_
> - $A \subset B \implies f(A) \subset f(B)$
> - $f(A \cup B) = f(A) \cup f(B)$
> - $f(A \cap B) \subset f(A) \cap f(B)$
#### Image réciproque
> Soit $B$ une partie de $F$, on appelle image réciproque de $B$ par $f$. le sous-ensemble de $E$ noté $f^{-1}(B)$ défini par: 
> - $f^{-1}(B)=\{x \in E, f(x) \in B\}$
> 
> $f^{-1}(\emptyset)=\emptyset$ <br>
> $f^{-1}(F)=E$ <br>
> $f^{-1}(\{y\})=\{x \in E, f(x)=y\}$
> ___
> _Proposition_
> - $A \subset B \implies f^{-1}(A) \subset f^{-1}(B)$
> - $f^{-1}(A \cup B) = f^{-1}(A) \cup f^{-1}(B)$
> - $f^{-1}(A \cap B) = f^{-1}(A) \cap f^{-1}(B)$
### Restriction & Prolongement
#### La restriction
> Une application $f:E \rightarrow F$ et A une partie de $E$. <br>
> $f_{|A}: A \rightarrow F, x \rightarrow f(x)$ est la restriction de $f$ a A.
#### Le prolongement
> Une application $f:E \rightarrow F$ et $E \subset E'$. <br>
> $g: E' \rightarrow F$ est un prolongement de $f$ à $E'$ si $g_{|E} = f$.
### Ensemble des applications
> L'ensemble des applications de $E$ dans $F$: $\mathcal{F}(E,F)=F^E$ <br>
> ___
> _Propositions_ <br>
> Dans le cas ou $E$ et $F$ des ensembles finis:
> - $Card(F^E) = Card(F)^{Card(E)}$
> - $f: E\not= \emptyset \rightarrow F$, n'existe pas 
> - $\emptyset^E=\emptyset$
> - $Card(\emptyset^E)=0^{Card(E)}=0$
> - $f: E=\emptyset \rightarrow F (quelconque)$, existe
> - $F^\emptyset = \{\emptyset_F\}$, application vide
> - $Card(F^\emptyset) = Card(F)^0 = 1$
### Les Applications 
#### Injectives
> $f:E \rightarrow F$, une application injective si tout élément de $F$ possède au plus un antécédent dans $E$.
> - $\exists x,x' \in E, x\not= x' \implies f(x) \not= f(x')$
> - $\forall x,x' \in E, f(x) = f(x') \implies x = x'$
> ___
> _Propositions_  <br>
> La composé de deux application injectives est injective. <br>
> 
> Si $g \circ f$ est injective alors $f$ est injective. <br>
> 
>