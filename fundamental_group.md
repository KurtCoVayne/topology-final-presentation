### 4 The Fundamental Group

#### 4.1 Introduction

We turn now to the investigation of the structure of a topological space by means of paths or curves in the space. Recall that in Chapter 1 we decided that two closed paths in a space are homotopic provided that each of them can be "continuously deformed into the other." In Figure 4.1, for example, paths $C_2$ and $C_3$ are homotopic to each other and $C_1$ is homotopic to a constant path. Path $C_1$ is not homotopic to either $C_2$ or $C_3$ since neither $C_2$ nor $C_3$ can be pulled across the hole that they enclose.

In this chapter we shall make precise this intuitive idea of homotopic paths. The basic idea is a special case of the homotopy relation for continuous functions which we considered in the proof of the Simplicial Approximation Theorem (Theorem 3.6).

***

**Figure 4.1**
*Description of Figure 4.1:*
The figure illustrates a shaded annulus (a disk with a central circular hole). Three oriented closed paths (loops) are drawn within the annulus:
- $C_1$ is a small closed loop lying entirely to the left of the central hole, enclosing no holes.
- $C_2$ and $C_3$ are concentric closed loops that encircle the central hole of the annulus. Both are oriented in the counterclockwise direction.
***

---

#### 4.2 Homotopic Paths and the Fundamental Group

**Definition.** A *path* in a topological space $X$ is a continuous function $\alpha$ from the closed unit interval $I = [0, 1]$ into $X$. The points $\alpha(0)$ and $\alpha(1)$ are the *initial point* and *terminal point* of $\alpha$ respectively. Paths $\alpha$ and $\beta$ with common initial point $\alpha(0) = \beta(0)$ and common terminal point $\alpha(1) = \beta(1)$ are *equivalent* provided that there is a continuous function $H: I \times I \to X$ such that

$$H(t, 0) = \alpha(t), \quad H(t, 1) = \beta(t), \quad t \in I,$$

$$H(0, s) = \alpha(0) = \beta(0), \quad H(1, s) = \alpha(1) = \beta(1), \quad s \in I.$$

The function $H$ is called a *homotopy* between $\alpha$ and $\beta$. For a given value of $s$, the restriction of $H$ to $I \times \{s\}$ is called the *s-level* of the homotopy and is denoted $H(\cdot, s)$.

**Definition.** A *loop* in a topological space $X$ is a path $\alpha$ in $X$ with $\alpha(0) = \alpha(1)$. The common value of the initial point and terminal point is referred to as the *base point* of the loop. Two loops $\alpha$ and $\beta$ having common base point $x_0$ are *equivalent* or *homotopic modulo* $x_0$ provided that they are equivalent as paths. In other words, $\alpha$ and $\beta$ are homotopic modulo $x_0$ (denoted $\alpha \sim_{x_0} \beta$) provided that there is a homotopy $H: I \times I \to X$ such that

$$H(\cdot, 0) = \alpha, \quad H(\cdot, 1) = \beta, \quad H(0, s) = H(1, s) = x_0, \quad s \in I.$$

Since $H(0, s)$ and $H(1, s)$ always have value $x_0$ regardless of the choice of $s$ in $[0, 1]$, it is sometimes said that the base point "stays fixed throughout the homotopy."

**Example 4.1.** The paths $\alpha$ and $\beta$ in Figure 4.2 are equivalent. A homotopy $H$ demonstrating the equivalence is defined by

$$H(t, s) = s\beta(t) + (1 - s)\alpha(t), \quad (s, t) \in I \times I.$$

The homotopy essentially "pulls $\alpha$ across to $\beta$" without disturbing the end points. If the space had a "hole" between the ranges of $\alpha$ and $\beta$, then the paths would not be equivalent.

***

**Figure 4.2**
*Description of Figure 4.2:*
A graph in the $xy$-plane showing two paths sharing the same endpoints:
- The initial point is labeled $\alpha(0) = \beta(0)$.
- The terminal point is labeled $\alpha(1) = \beta(1)$.
- A lower curved path is labeled $\alpha$.
- An upper curved path is labeled $\beta$.
- A dashed curved path lying between them represents an intermediate stage of the homotopy, labeled $H(\cdot, 1/2)$.
***

---

The following lemma from point-set topology will be used repeatedly in this chapter. Its proof is left as an exercise.

**The Continuity Lemma.** *Let $X$ be a topological space with closed subsets $A$ and $B$ such that $A \cup B = X$. Let $f: A \to Y$ and $g: B \to Y$ be continuous maps to a space $Y$ such that $f(x) = g(x)$ for each $x$ in $A \cap B$. Then the map $h: X \to Y$ defined by*

$$h(x) = \begin{cases} f(x) & \text{if } x \in A \\ g(x) & \text{if } x \in B \end{cases}$$

*is continuous.*

**Theorem 4.1.** *(a) Equivalence of paths is an equivalence relation on the set of paths in a space $X$.*
*(b) Equivalence of loops is an equivalence relation on the set of loops in $X$ with base point $x_0$.*

```latex
\begin{proof}
We shall prove (b) and leave to the reader the obvious modifications needed for a proof of (a).

Consider the set of loops in $X$ having base point $x_0$. Any such loop $\alpha$ is equivalent to itself under the homotopy
\[ F(t, s) = \alpha(t), \quad (t, s) \in I \times I. \]
Thus the relation $\sim_{x_0}$ is reflexive.

Suppose $\alpha \sim_{x_0} \beta$. Then there is a homotopy $H: I \times I \to X$ satisfying
\[ H(\cdot, 0) = \alpha, \quad H(\cdot, 1) = \beta, \quad H(0, s) = H(1, s) = x_0, \quad s \in I. \]
Then the homotopy
\[ \bar{H}(t, s) = H(t, 1 - s), \quad (s, t) \in I \times I, \]
shows that $\beta \sim_{x_0} \alpha$ and hence that equivalence of loops is a symmetric relation.

Suppose now that for the loops $\alpha$, $\beta$, and $\gamma$ we have $\alpha \sim_{x_0} \beta$ and $\beta \sim_{x_0} \gamma$. Then there are homotopies $H$ and $K$ such that
\[ H(\cdot, 0) = \alpha, \quad H(\cdot, 1) = \beta, \quad H(0, s) = H(1, s) = x_0, \quad s \in I, \]
\[ K(\cdot, 0) = \beta, \quad K(\cdot, 1) = \gamma, \quad K(0, s) = K(1, s) = x_0, \quad s \in I. \]
The required homotopy $L$ between $\alpha$ and $\gamma$ is defined by
\[ L(t, s) = \begin{cases} H(t, 2s) & \text{if } 0 \le s \le \frac{1}{2} \\ K(t, 2s - 1) & \text{if } \frac{1}{2} \le s \le 1. \end{cases} \]
The continuity of $L$ follows from the Continuity Lemma with $A = I \times [0, \frac{1}{2}]$ and $B = I \times [\frac{1}{2}, 1]$. Thus $\alpha \sim_{x_0} \gamma$, so $\sim_{x_0}$ is an equivalence relation.
\end{proof}
```

---

**Definition.** If $\alpha$ and $\beta$ are paths in $X$ with $\alpha(1) = \beta(0)$, then the *path product* $\alpha * \beta$ is the path defined by

$$\alpha * \beta(t) = \begin{cases} \alpha(2t) & \text{if } 0 \le t \le \frac{1}{2} \\ \beta(2t - 1) & \text{if } \frac{1}{2} \le t \le 1. \end{cases}$$

The continuity of $\alpha * \beta$ is an immediate consequence of the Continuity Lemma.

Thinking of the variable $t$ as time, a path $\alpha$ in $X$ can be visualized by the motion of a point beginning at $\alpha(0)$ and tracing a continuous route to $\alpha(1)$. A product $\alpha * \beta$ is then visualized as follows: The moving point begins at $\alpha(0)$ and follows path $\alpha$ at twice the normal rate, arriving at $\alpha(1)$ when $t = \frac{1}{2}$. The point then follows path $\beta$ at twice the normal rate and arrives at $\beta(1)$ at time $t = 1$. Note that the condition $\alpha(1) = \beta(0)$ is required for the product of paths in order to avoid discontinuities.

We shall be primarily concerned with products of loops $\alpha$ and $\beta$ having common base point $x_0$. In this case the product $\alpha * \beta$ is also a loop with base point $x_0$. The following lemma is left as an exercise:

**Lemma.** *Suppose that loops $\alpha$, $\alpha'$, $\beta$, $\beta'$ in a space $X$ all have base point $x_0$ and satisfy the relations $\alpha \sim_{x_0} \alpha'$ and $\beta \sim_{x_0} \beta'$. Then the products $\alpha * \beta$ and $\alpha' * \beta'$ are homotopic modulo $x_0$.*

**Definition.** Consider the family of loops in $X$ with base point $x_0$. Homotopy modulo $x_0$ is an equivalence relation on this family and therefore partitions it into disjoint equivalence classes, $[\alpha]$ denoting the equivalence class determined by loop $\alpha$. The class $[\alpha]$ is called the *homotopy class* of $\alpha$. The set of such homotopy classes is denoted by $\pi_1(X, x_0)$. If $[\alpha]$ and $[\beta]$ belong to $\pi_1(X, x_0)$, then the *product* $[\alpha] \circ [\beta]$ is defined as follows:

$$[\alpha] \circ [\beta] = [\alpha * \beta].$$

Thus the product of two homotopy classes is the class determined by the path product of their representative elements. The preceding lemma insures that the product $\circ$ is a well-defined operation on $\pi_1(X, x_0)$. The set $\pi_1(X, x_0)$ with the $\circ$ operation is called the *fundamental group* of $X$ at $x_0$, the *first homotopy group* of $X$ at $x_0$, or the *Poincaré group* of $X$ at $x_0$.

**Theorem 4.2.** *The set $\pi_1(X, x_0)$ is a group under the $\circ$ operation.*

```latex
\begin{proof}
To show that $\pi_1(X, x_0)$ is a group, we must show that there is a loop $c$ for which $[c]$ is an identity element, that each homotopy class $[\alpha]$ has an inverse $[\bar{\alpha}] = [\alpha]^{-1}$, and that the multiplication $\circ$ is associative. Let us prove each of these as a separate lemma.
\end{proof}
```

**Lemma A.** *$\pi_1(X, x_0)$ has an identity element $[c]$ where $c$ is the constant loop whose only value is $x_0$.*

---

```latex
\begin{proof}
The constant loop $c$ is defined by
\[ c(t) = x_0, \quad t \in I. \]
If $\alpha$ is a loop in $X$ based at $x_0$, then
\[ c * \alpha(t) = \begin{cases} x_0 & \text{if } 0 \le t \le \frac{1}{2} \\ \alpha(2t - 1) & \text{if } \frac{1}{2} \le t \le 1. \end{cases} \]
To show that $[c * \alpha] = [\alpha]$, we require a homotopy $H: I \times I \to X$ such that
\[ H(\cdot, 0) = c * \alpha, \quad H(\cdot, 1) = \alpha, \]
\[ H(0, s) = H(1, s) = x_0, \quad s \in I. \]
These requirements are filled by defining
\[ H(t, s) = \begin{cases} x_0 & \text{if } 0 \le t \le (1 - s)/2 \\ \alpha\left(\frac{2t + s - 1}{s + 1}\right) & \text{if } (1 - s)/2 \le t \le 1. \end{cases} \]
After checking to see that $H$ has the required properties, we will see how it was obtained. Note that
\[ H(t, 0) = \begin{cases} x_0 & \text{if } 0 \le t \le \frac{1}{2} \\ \alpha(2t - 1) & \text{if } \frac{1}{2} \le t \le 1 \end{cases} = c * \alpha(t), \]
\[ H(t, 1) = \begin{cases} x_0 & \text{if } 0 \le t \le 0 \\ \alpha(t) & \text{if } 0 \le t \le 1 \end{cases} = \alpha(t), \]
\[ H(0, s) = x_0, \quad H(1, s) = \alpha\left(\frac{2 + s - 1}{s + 1}\right) = \alpha(1) = x_0, \quad s \in I. \]
Continuity of $H$ is assured by the Continuity Lemma since $(2t + s - 1)$ divided by $(s + 1)$ is a continuous function of $(t, s)$ and the two parts of the definition of $H$ agree when $t = (1 - s)/2$.

The homotopy $H$ was obtained from the diagram shown in Figure 4.3 by the analysis that follows. To define a homotopy $H$ on the unit square which
\end{proof}
```

***

**Figure 4.3**
*Description of Figure 4.3:*
A diagram plotted on a $t$-axis (horizontal, from $0$ to $1$) and an $s$-axis (vertical, from $0$ to $1$). 
- The unit square is divided into two regions by a straight line $L$ starting at $(1/2, 0)$ on the bottom edge and ending at $(0, 1)$ on the left edge.
- The region to the left of line $L$ is labeled with $x_0$, representing the constant value.
- The region to the right of line $L$ is labeled with $\alpha$, representing the reparameterized loop $\alpha$.
- Key boundary coordinates are marked: $(0, 1)$, $(0, s)$, $(1, s)$, $(1/2, 0)$, and $(1, 0)$.
***

---

agrees with $c * \alpha$ on the bottom and with $\alpha$ on the top, let us intuitively assume that we will define the $s$-level $H(\cdot, s)$ to have value $x_0$ at each point $(t, s)$ from $t = 0$ out to the diagonal line $L$. Then we wish $H(\cdot, s)$ to follow the route of $\alpha$. Since $L$ has equation $t = (1 - s)/2$ and the "time" remaining when $t = (1 - s)/2$ is

$$1 - \frac{(1 - s)}{2} = \frac{1 + s}{2},$$

the desired effect is accomplished by defining

$$H(t, s) = \begin{cases} x_0 & \text{if } 0 \le t \le (1 - s)/2 \\ \alpha\left(\left(t - \frac{(1 - s)}{2}\right) \cdot \frac{2}{1 + s}\right) & \text{if } (1 - s)/2 \le t \le 1. \end{cases}$$

This expression reduces to the formula for $H$ given previously.

We have now proved the following: If $[\alpha] \in \pi_1(X, x_0)$, then

$$[c] \circ [\alpha] = [c * \alpha] = [\alpha]$$

so that $[c]$ is a left identity for $\pi_1(X, x_0)$.

In order to see that $[c]$ is a right identity as well, we need to show that $[\alpha * c] = [\alpha]$. This is accomplished by the homotopy

$$H'(t, s) = \begin{cases} \alpha\left(\frac{2t}{s + 1}\right) & \text{if } 0 \le t \le (s + 1)/2 \\ x_0 & \text{if } (s + 1)/2 \le t \le 1. \end{cases}$$

The intuitive picture is left to the reader.

**Lemma B.** *For each homotopy class $[\alpha]$ in $\pi_1(X, x_0)$, the inverse of $[\alpha]$ with respect to the operation $\circ$ and the identity element $[c]$ is the class $[\bar{\alpha}]$ where $\bar{\alpha}(t) = \alpha(1 - t)$, $t \in I$.*

```latex
\begin{proof}
The path $\bar{\alpha}(t) = \alpha(1 - t)$ is commonly called the reverse of the path $\alpha$. It begins at $\alpha(1) = x_0$ and traces the route of $\alpha$ backwards. We must prove that
\[ [\alpha] \circ [\bar{\alpha}] = [\bar{\alpha}] \circ [\alpha] = [c]. \]
Note that
\[ [\alpha] \circ [\bar{\alpha}] = [\alpha * \bar{\alpha}], \]
\[ \alpha * \bar{\alpha}(t) = \begin{cases} \alpha(2t) & \text{if } 0 \le t \le \frac{1}{2} \\ \alpha(2 - 2t) & \text{if } \frac{1}{2} \le t \le 1. \end{cases} \]
The path $\alpha * \bar{\alpha}$ follows $\alpha$ and then follows the reverse of $\alpha$ to the starting point $x_0$. We shall define a homotopy $K$ for which the $s$-level $K(\cdot, s)$ follows route $\alpha$ out to $\alpha(s)$ and then retraces its steps back to $x_0$. This is accomplished by defining
\[ K(t, s) = \begin{cases} \alpha(2ts) & \text{if } 0 \le t \le \frac{1}{2} \\ \alpha(2s - 2ts) & \text{if } \frac{1}{2} \le t \le 1. \end{cases} \]
\end{proof}
```

---

It is easily observed that

$$K(\cdot, 0) = c, \quad K(\cdot, 1) = \alpha * \bar{\alpha},$$

$$K(0, s) = K(1, s) = x_0, \quad s \in I,$$

and that $K$ is continuous.

Thus

$$[\alpha] \circ [\bar{\alpha}] = [\alpha * \bar{\alpha}] = [c],$$

so $[\bar{\alpha}]$ is a right inverse for $[\alpha]$. Since the reverse of the reverse of $\alpha$ is itself $\alpha$ (i.e., $\bar{\bar{\alpha}} = \alpha$), the same proof shows that

$$[\bar{\alpha}] \circ [\alpha] = [\bar{\alpha}] \circ [\bar{\bar{\alpha}}] = [c],$$

and hence $[\bar{\alpha}] = [\alpha]^{-1}$ is a two-sided inverse for $[\alpha]$.

**Lemma C.** *The multiplication $\circ$ is associative.*

```latex
\begin{proof}
Let $[\alpha]$, $[\beta]$, and $[\gamma]$ be members of $\pi_1(X, x_0)$. We must prove that
\[ ([\alpha] \circ [\beta]) \circ [\gamma] = [\alpha] \circ ([\beta] \circ [\gamma]) \]
or, equivalently,
\[ [(\alpha * \beta) * \gamma] = [\alpha * (\beta * \gamma)]. \]
A little arithmetic shows that
\[ ((\alpha * \beta) * \gamma)(t) = \begin{cases} \alpha(4t) & \text{if } 0 \le t \le \frac{1}{4} \\ \beta(4t - 1) & \text{if } \frac{1}{4} \le t \le \frac{1}{2} \\ \gamma(2t - 1) & \text{if } \frac{1}{2} \le t \le 1 \end{cases} \]
and
\[ (\alpha * (\beta * \gamma))(t) = \begin{cases} \alpha(2t) & \text{if } 0 \le t \le \frac{1}{2} \\ \beta(4t - 2) & \text{if } \frac{1}{2} \le t \le \frac{3}{4} \\ \gamma(4t - 3) & \text{if } \frac{3}{4} \le t \le 1. \end{cases} \]
The reader should apply the method illustrated in Lemma A to Figure 4.4, obtain the homotopy
\[ L(t, s) = \begin{cases} \alpha\left(\frac{4t}{s + 1}\right) & \text{if } 0 \le t \le (s + 1)/4 \\ \beta(4t - 1 - s) & \text{if } (s + 1)/4 \le t \le (s + 2)/4 \\ \gamma\left(\frac{4t - 2 - s}{2 - s}\right) & \text{if } (s + 2)/4 \le t \le 1 \end{cases} \]
and verify that it is a homotopy modulo $x_0$ between $(\alpha * \beta) * \gamma$ and $\alpha * (\beta * \gamma)$. This completes the proof that $\circ$ is associative and the proof of Theorem 4.2.
\end{proof}
```

The technique for obtaining the homotopies in the proof of Theorem 4.2 is extremely important in homotopy theory. The reader should be certain that

---

#### 4.2 Homotopic Paths and the Fundamental Group

***

**Figure 4.4**
*Description of Figure 4.4:*
A diagram on a $t$-axis (from $0$ to $1$) and an $s$-axis (from $0$ to $1$) illustrating the homotopy for associativity.
- The unit square is divided into three regions by two straight lines.
- The first line goes from $(1/4, 0)$ on the bottom edge to $(1/2, 1)$ on the top edge.
- The second line goes from $(1/2, 0)$ on the bottom edge to $(3/4, 1)$ on the top edge.
- The three regions represent the domains for the paths $\alpha$, $\beta$, and $\gamma$ from left to right.
- Boundary coordinates are labeled: $(0, 1)$, $(1/4, 0)$, $(1/2, 0)$, and $(1, 0)$.
***

he understands the method by solving the relevant exercises at the end of the chapter.

**Definition.** A space $X$ is *path connected* means that each pair of points in $X$ can be joined by a path. In other words, if $x_0$ and $x_1$ are points in $X$, then there is a path in $X$ with initial point $x_0$ and terminal point $x_1$.

**Theorem 4.3.** *If a space $X$ is path connected and $x_0$, $x_1$ are points in $X$, then the fundamental groups $\pi_1(X, x_0)$ and $\pi_1(X, x_1)$ are isomorphic.*

```latex
\begin{proof}
Let $\rho: I \to X$ be a path such that
\[ \rho(0) = x_0, \quad \rho(1) = x_1. \]
If $\alpha$ is a loop based at $x_0$, then $(\bar{\rho} * \alpha) * \rho$ is a loop based at $x_1$. Here $\bar{\rho}$ denotes the reverse of $\rho$:
\[ \bar{\rho}(t) = \rho(1 - t), \quad 0 \le t \le 1. \]
We define a function $P: \pi_1(X, x_0) \to \pi_1(X, x_1)$ by
\[ P([\alpha]) = [(\bar{\rho} * \alpha) * \rho], \quad [\alpha] \in \pi_1(X, x_0). \]
It should be clear that the image of $[\alpha]$ is independent of the choice of path in $[\alpha]$ so that $P$ is well defined.

Several observations are necessary before showing that $P$ is an isomorphism. First, Lemma B with minor modifications shows that $[\bar{\rho} * \rho]$ and $[\rho * \bar{\rho}]$ are the identity elements of $\pi_1(X, x_0)$ and $\pi_1(X, x_1)$ respectively. Second, Lemma C can be easily modified to show that for any paths $\alpha, \beta, \gamma$ for which $(\alpha * \beta) * \gamma$ and $\alpha * (\beta * \gamma)$ are defined, the indicated triple products are equivalent. Thus in $[(\bar{\rho} * \alpha) * \rho]$, we may ignore the inner parentheses and simply write $[\bar{\rho} * \alpha * \rho]$ since the equivalence class is the same regardless of the way in which the terms of the product are associated.
\end{proof}
```

---

Now consider $[\alpha]$, $[\beta]$ in $\pi_1(X, x_0)$.

$$P([\alpha] \circ [\beta]) = P([\alpha * \beta]) = [\bar{\rho} * \alpha * \beta * \rho] = [\bar{\rho} * \alpha * \rho * \bar{\rho} * \beta * \rho]$$

$$= [\bar{\rho} * \alpha * \rho] \circ [\bar{\rho} * \beta * \rho] = P([\alpha]) \circ P([\beta]).$$

Thus $P$ is a homomorphism.

The function $Q: \pi_1(X, x_1) \to \pi_1(X, x_0)$ defined by

$$Q([\sigma]) = [\rho * \sigma * \bar{\rho}], \quad [\sigma] \in \pi_1(X, x_1)$$

is the inverse of $P$. To see this, observe that for $[\alpha] \in \pi_1(X, x_0)$,

$$QP([\alpha]) = Q([\bar{\rho} * \alpha * \rho]) = [\rho * \bar{\rho} * \alpha * \rho * \bar{\rho}]$$

$$= [\rho * \bar{\rho}] \circ [\alpha] \circ [\rho * \bar{\rho}] = [\alpha].$$

Thus $QP$ is the identity map on $\pi_1(X, x_0)$ and, by symmetry, we observe that $PQ$ must be the identity map on $\pi_1(X, x_1)$. Thus the indicated fundamental groups are isomorphic. $\square$

Because of the preceding theorem, mention of a base point for the fundamental group of a path connected space is often omitted. We shall refer sometimes to "the fundamental group of $X$" and write $\pi_1(X)$, when $X$ is path connected, since the same abstract group will result regardless of the choice of the base point. This applies primarily to the process of computing the fundamental group of a given space. Theorem 4.3 does not guarantee, however, that the isomorphism between $\pi_1(X, x_0)$ and $\pi_1(X, x_1)$ is unique; quite often different paths lead to different isomorphisms. For this reason, there are many applications of the fundamental group in which the specification of a base point is important. When comparing fundamental groups of two spaces $X$ and $Y$ on the basis of a continuous map $f: X \to Y$, for example, it is usually necessary to specify a base point for each space.

**Definition.** A path connected space $X$ is *simply connected* provided that $\pi_1(X)$ is the trivial group.

**Theorem 4.4.** *Every contractible space is simply connected.*

```latex
\begin{proof}
Let $X$ be a contractible space. There is a point $x_0$ in $X$ and a homotopy $H: X \times I \to X$ such that
\[ H(x, 0) = x, \quad H(x, 1) = x_0, \quad x \in X. \]
It is easy to see that $X$ is path connected. If $x \in X$, the function
\[ \alpha_x = H(x, \cdot): I \to X \]
is a path from $H(x, 0) = x$ to $H(x, 1) = x_0$. Thus any two points $x$ and $y$ are joined by the path $\alpha_x * \bar{\alpha}_y$ where $\bar{\alpha}_y$ is the reverse of $\alpha_y$.

Assume for a moment that $H$ has the additional property
\[ H(x_0, s) = x_0, \quad s \in I. \]
\end{proof}
```

---

#### 4.3 The Covering Homotopy Property for $S^1$

For $[\alpha] \in \pi_1(X, x_0)$, define a homotopy $h: I \times I \to X$ by

$$h(t, s) = H(\alpha(t), s).$$

Then

$$h(t, 0) = \alpha(t), \quad h(t, 1) = x_0, \quad t \in I$$

$$h(0, s) = h(1, s) = x_0, \quad s \in I.$$

Here we have used our additional assumption $H(x_0, s) = x_0$ to produce $h(0, s) = h(1, s) = x_0$. Thus $h$ demonstrates that $\alpha$ is equivalent to $c$, the constant loop whose only value is $x_0$. Then $[\alpha] = [c]$ and $\pi_1(X, x_0)$ consists only of an identity element.

But what happens if the path $H(x_0, \cdot): I \to X$ is not constant? We must then modify each level of the homotopy $h$ to produce at each level a loop based at $x_0$. The procedure is illustrated in Figure 4.5, and the revised definition of $h$ is left as an exercise for the reader. $\square$

***

**Figure 4.5**
*Description of Figure 4.5:*
An abstract shaded region representing a space containing a figure-eight-like curve representing loops.
- The base point $x_0$ is marked at the bottom.
- Two loops are shown starting and ending at $x_0$, labeled $H(x_0, \cdot)$ and $h(\cdot, s)$ describing the paths of the homotopy.
***

#### 4.3 The Covering Homotopy Property for $S^1$

This section is devoted to determining the fundamental group of the circle. It will be convenient to consider the unit circle $S^1$ as a subset of the complex plane; we thus consider $\mathbb{R}^2$ as the set of all complex numbers $x = x_1 + ix_2$ where $i = \sqrt{-1}$.

We shall refer several times to the function $p: \mathbb{R} \to S^1$ defined by

$$p(t) = \exp(2\pi i t), \quad t \in \mathbb{R}.$$

Here $\exp$ denotes the exponential function on the complex plane. In particular, if $t$ is in the set $\mathbb{R}$ of real numbers, then

$$\exp(2\pi i t) = \cos(2\pi t) + i \sin(2\pi t).$$

Note that $p$ maps each integer $n$ in $\mathbb{R}$ to $1$ in $S^1$ and wraps each interval $[n, n + 1]$ exactly once around $S^1$ in the counterclockwise direction.

---

**Definition.** If $\sigma: I \to S^1$ is a path, then a path $\tilde{\sigma}: I \to \mathbb{R}$ such that $p\tilde{\sigma} = \sigma$ is called a *covering path* of $\sigma$ or a *lifting* of $\sigma$ to the real line $\mathbb{R}$. If $F: I \times I \to S^1$ is a homotopy, then a homotopy $\tilde{F}: I \times I \to \mathbb{R}$ such that $p\tilde{F} = F$ is called a *covering homotopy* or a *lifting* of $F$.

**Theorem 4.5 (The Covering Path Property).** *If $\sigma: I \to S^1$ is a path in $S^1$ with initial point $1$, then there is a unique covering path $\tilde{\sigma}: I \to \mathbb{R}$ with initial point $0$.*

```latex
\begin{proof}
Let $U_1$ denote the open arc on $S^1$ beginning at $1$ and extending in the counterclockwise direction to $-i$, and let $U_2$ denote the open arc from $-1$ counterclockwise to $i$, as shown in Figure 4.6. Then $U_1$ and $U_2$ are open sets in $S^1$, $U_1 \cup U_2 = S^1$ and
\[ p^{-1}(U_1) = \bigcup_{n=-\infty}^{\infty} \left(n, n + \frac{3}{4}\right), \]
\[ p^{-1}(U_2) = \bigcup_{n=-\infty}^{\infty} \left(n - \frac{1}{2}, n + \frac{1}{4}\right). \]
\end{proof}
```

***

**Figure 4.6**
*Description of Figure 4.6:*
Two circles illustrating the open arcs $U_1$ and $U_2$:
- The left circle shows $U_1$, which starts at $1$ (on the right) and goes counterclockwise around to $-i$ (at the bottom).
- The right circle shows $U_2$, which starts at $-1$ (on the left) and goes counterclockwise around to $i$ (at the top).
***

Note that $p$ maps each interval $(n, n + \frac{3}{4})$ homeomorphically onto $U_1$ and maps each interval $(n - \frac{1}{2}, n + \frac{1}{4})$ homeomorphically onto $U_2$.

Here is the intuitive idea behind the proof. Subdivide the range of the path $\sigma$ into sections so that each section is contained either in $U_1$ or in $U_2$. If a particular section is contained in $U_1$, we choose one of the intervals $V = (n, n + \frac{3}{4})$ and consider the restriction $p|_V$ of $p$ to this interval. Composing $(p|_V)^{-1}$ with this section of the path "lifts" the section to a section of a path in $\mathbb{R}$. The same method applies to sections lying in $U_2$. To insure continuity we must be careful that the initial point of a given lifted section be the terminal point of the lifted section that precedes it.

This method is applied inductively as follows. Let $\epsilon$ be a Lebesgue number for the open cover $\{\sigma^{-1}(U_1), \sigma^{-1}(U_2)\}$ of $I$. Choose a sequence

$$0 = t_0 < t_1 < t_2 < \dots < t_n = 1$$

of numbers in $I$ with each successive pair differing by less than $\epsilon$. Then the image $\sigma([t_i, t_{i+1}])$ of any subinterval $[t_i, t_{i+1}]$, $0 \le i \le n - 1$, must be contained in either $U_1$ or $U_2$.

Now, $\sigma([t_0, t_1])$ must be contained in $U_2$ since

$$\sigma(t_0) = \sigma(0) = 1 \notin U_1.$$

---

#### 4.3 The Covering Homotopy Property for $S^1$

Let $V_1 = (-\frac{1}{2}, \frac{1}{4})$ and define $\tilde{\sigma}$ on $[t_0, t_1]$ by

$$\tilde{\sigma}(t) = (p|_{V_1})^{-1}\sigma(t).$$

Proceeding inductively, suppose that $\tilde{\sigma}$ has been defined on the interval $[t_0, t_k]$. Then

$$\sigma([t_k, t_{k+1}]) \subset U$$

where $U$ is either $U_1$ or $U_2$. Let $V_{k+1}$ be the component of $p^{-1}(U)$ to which $\tilde{\sigma}(t_k)$ belongs. Note that $V_{k+1}$ is one of the intervals $(n, n + \frac{3}{4})$ or $(n - \frac{1}{2}, n + \frac{1}{4})$. Then $p|_{V_{k+1}}$ is a homeomorphism, and the desired extension of $\tilde{\sigma}$ to $[t_k, t_{k+1}]$ is obtained by defining

$$\tilde{\sigma}(t) = (p|_{V_{k+1}})^{-1}\sigma(t), \quad t \in [t_k, t_{k+1}].$$

The continuity of $\tilde{\sigma}$ is guaranteed by the Continuity Lemma since the lifted sections agree at the endpoints $t_k$. This inductive step extends the definition of $\tilde{\sigma}$ to $[t_0, t_n] = I$.

To prove that $\tilde{\sigma}$ is the only such covering path, suppose that $\sigma'$ also satisfies the required properties $p\sigma' = \sigma$ and $\sigma'(0) = 0$. Then the path $\tilde{\sigma} - \sigma'$ has initial point $0$ and

$$p(\tilde{\sigma}(t) - \sigma'(t)) = p\tilde{\sigma}(t)/p\sigma'(t) = \sigma(t)/\sigma(t) = 1, \quad t \in I,$$

so $\tilde{\sigma} - \sigma'$ is a covering path of the constant path whose only value is $1$. Since $p$ maps only integers to $1$, then $\tilde{\sigma} - \sigma'$ must have only integral values. Thus, since $I$ is connected, $\tilde{\sigma} - \sigma'$ can have only one integral value. This one value must be the initial value, $0$. Therefore $\tilde{\sigma} - \sigma' = 0$, so $\tilde{\sigma} = \sigma'$. The required lifting $\tilde{\sigma}$ is therefore unique. $\square$

**Corollary (The Generalized Covering Path Property).** *If $\sigma$ is a path in $S^1$ and $r$ is a real number such that $p(r) = \sigma(0)$, then there is a unique covering path $\tilde{\sigma}$ of $\sigma$ with initial point $r$.*

```latex
\begin{proof}
The path $\sigma/\sigma(0)$ is a path in $S^1$ with initial point $\sigma(0)/\sigma(0) = 1$ and therefore has a unique covering path $\eta$ with initial point $0$. The path $\tilde{\sigma}: I \to \mathbb{R}$ defined by
\[ \tilde{\sigma}(t) = r + \eta(t), \quad t \in I, \]
is the required covering path of $\sigma$ with initial point $r$. The uniqueness of $\tilde{\sigma}$ follows from that of $\eta$.
\end{proof}
```

**Theorem 4.6 (The Covering Homotopy Property).** *If $F: I \times I \to S^1$ is a homotopy such that $F(0, 0) = 1$, then there is a unique covering homotopy $\tilde{F}: I \times I \to \mathbb{R}$ such that $\tilde{F}(0, 0) = 0$.*

```latex
\begin{proof}
The proof is similar to that of the Covering Path Property; in fact, we use the same open sets $U_1, U_2$ in $S^1$. By a Lebesgue number argument, there must exist numbers
\[ 0 = t_0 < t_1 < \dots < t_n = 1, \quad 0 = s_0 < s_1 < \dots < s_m = 1 \]
\end{proof}
```

---

such that $F$ maps any rectangle $[t_i, t_{i+1}] \times [s_k, s_{k+1}]$ into either $U_1$ or $U_2$. Since

$$F(0, 0) = 1 \notin U_1,$$

then $F([t_0, t_1] \times [s_0, s_1])$ must be contained in $U_2$. Let $V_1 = (-\frac{1}{2}, \frac{1}{4})$ and define $\tilde{F}$ on $[t_0, t_1] \times [s_0, s_1]$ by

$$\tilde{F}(t, s) = (p|_{V_1})^{-1} F(t, s).$$

Now extend the definition of $\tilde{F}$ over the rectangles $[t_i, t_{i+1}] \times [s_0, s_1]$ in succession as in the proof of the Covering Path Property, being careful that the definitions agree on common edges of adjacent rectangles. This defines $\tilde{F}$ on the strip $I \times [s_0, s_1]$.

Proceeding inductively, suppose that $\tilde{F}$ has been defined on $(I \times [s_0, s_k]) \cup ([t_0, t_i] \times [s_k, s_{k+1}])$. We wish to extend the domain to include $[t_i, t_{i+1}] \times [s_k, s_{k+1}]$, as shown in Figure 4.7. Let

$$A = \{(x, y) \in [t_i, t_{i+1}] \times [s_k, s_{k+1}] : x = t_i \text{ or } y = s_k\}$$

be the common boundary of the present domain of $\tilde{F}$ and $[t_i, t_{i+1}] \times [s_k, s_{k+1}]$. Now, $F([t_i, t_{i+1}] \times [s_k, s_{k+1}])$ is contained in either $U_1$ or $U_2$. Denote this containing set by $U$, and let $V$ be the component of $p^{-1}(U)$ which contains $\tilde{F}(A)$. Define $\tilde{F}$ on $[t_i, t_{i+1}] \times [s_k, s_{k+1}]$ by

$$\tilde{F}(t, s) = (p|_V)^{-1} F(t, s).$$

***

**Figure 4.7**
*Description of Figure 4.7:*
A grid diagram showing the inductive step of the homotopy lifting.
- The horizontal axis is $t$ (from $0$ to $1$), and the vertical axis is $s$ (from $0$ to $1$).
- A shaded L-shaped boundary represents the domain where $\tilde{F}$ is already defined.
- The next block to be filled is $[t_i, t_{i+1}] \times [s_k, s_{k+1}]$, with its bottom and left edges highlighted as the set $A$.
- Key coordinates labeled: $0$, $t_i$, $t_{i+1}$, $1$, $s_k$, $s_{k+1}$.
***

The continuity of $\tilde{F}$ follows from the Continuity Lemma since the old and new definitions of $\tilde{F}$ agree on the closed set $A$. This induction extends the domain of $\tilde{F}$ to $[t_0, t_n] \times [s_0, s_m] = I \times I$.

To see that $\tilde{F}$ is the only covering homotopy of $F$ with $\tilde{F}(0, 0) = 0$, suppose that $F'$ is another one. Then the homotopy $\tilde{F} - F'$ has the properties

$$(\tilde{F} - F')(0, 0) = \tilde{F}(0, 0) - F'(0, 0) = 0,$$

$$p(\tilde{F} - F')(t, s) = p\tilde{F}(t, s)/pF'(t, s) = F(t, s)/F(t, s) = 1,$$

---

#### 4.3 The Covering Homotopy Property for $S^1$

for all $(t, s)$ in $I \times I$. Thus, as in the case of covering paths, $\tilde{F} - F'$ can have only one integral value, namely $0$. Then $\tilde{F} = F'$ and the covering homotopy is unique. $\square$

**Definition.** Let $\alpha$ be a loop in $S^1$ with base point $1$. The Covering Path Property insures that there is exactly one covering path $\tilde{\alpha}$ of $\alpha$ with initial point $0$. Since

$$1 = \alpha(1) = p\tilde{\alpha}(1) = \exp(2\pi i \tilde{\alpha}(1)),$$

then $\tilde{\alpha}(1)$ must be an integer. This integer is called the *degree* of the loop $\alpha$.

**Theorem 4.7.** *Two loops $\alpha$ and $\beta$ in $S^1$ with base point $1$ are equivalent if and only if they have the same degree.*

```latex
\begin{proof}
Let $\tilde{\alpha}$ and $\tilde{\beta}$ denote the covering paths of $\alpha$ and $\beta$ respectively having initial point $0$ in $\mathbb{R}$.

Suppose first that $\alpha$ and $\beta$ have the same degree so that $\tilde{\alpha}(1) = \tilde{\beta}(1)$. Define a homotopy $H: I \times I \to \mathbb{R}$ by
\[ H(t, s) = (1 - s)\tilde{\alpha}(t) + s\tilde{\beta}(t), \quad (t, s) \in I \times I. \]
Then $H$ demonstrates the equivalence of $\tilde{\alpha}$ and $\tilde{\beta}$ as paths in $\mathbb{R}$. Note in particular that $H(1, s)$ is the common degree of $\alpha$ and $\beta$ for each $s$ in $I$. The homotopy
\[ pH: I \times I \to S^1 \]
shows the equivalence of $\alpha$ and $\beta$ as loops in $S^1$.

Suppose now that $\alpha$ and $\beta$ are equivalent loops in $S^1$ and that $K: I \times I \to S^1$ is a homotopy such that
\[ K(\cdot, 0) = \alpha, \quad K(\cdot, 1) = \beta, \]
\[ K(0, s) = K(1, s) = 1, \quad s \in I. \]
By the Covering Homotopy Property, there is a covering homotopy $\tilde{K}: I \times I \to \mathbb{R}$ such that
\[ \tilde{K}(0, 0) = 0, \quad p\tilde{K} = K. \]
Then
\[ p\tilde{K}(0, s) = K(0, s) = 1, \quad s \in I, \]
so $\tilde{K}(0, s)$ must be an integer for each value of $s$. Since $I$ is connected, $\tilde{K}(0, \cdot)$ must have only the value $\tilde{K}(0, 0) = 0$. A similar argument shows that $\tilde{K}(1, \cdot)$ is also a constant function.

Since
\[ p\tilde{K}(\cdot, 0) = K(\cdot, 0) = \alpha, \quad p\tilde{K}(\cdot, 1) = K(\cdot, 1) = \beta, \]
then $\tilde{K}(\cdot, 0) = \tilde{\alpha}$ and $\tilde{K}(\cdot, 1) = \tilde{\beta}$ are the unique covering paths of $\alpha$ and $\beta$ respectively with initial point $0$. Thus
\[ \text{degree } \alpha = \tilde{\alpha}(1) = \tilde{K}(1, 0) = \tilde{K}(1, 1) = \tilde{\beta}(1) = \text{degree } \beta, \]
so $\alpha$ and $\beta$ must have the same degree.
\end{proof}
```

---

**Corollary.** *The fundamental group $\pi_1(S^1)$ is isomorphic to the group $\mathbb{Z}$ of integers under addition.*

```latex
\begin{proof}
Consider $\pi_1(S^1, 1)$, and define a function
\[ \text{deg}: \pi_1(S^1, 1) \to \mathbb{Z} \]
by
\[ \text{deg}[\alpha] = \text{degree } \alpha. \]
The preceding theorem insures that $\text{deg}$ is well-defined and one-to-one.

To see that $\text{deg}$ maps $\pi_1(S^1, 1)$ onto $\mathbb{Z}$, let $n$ be an integer. The loop $\gamma$ in $S^1$ defined by
\[ \gamma(t) = \exp(2\pi i n t) \]
is covered by the path
\[ t \to nt, \quad t \in I, \]
and therefore has degree $n$. Thus $\text{deg}[\gamma] = n$.

Suppose now that $[\alpha]$ and $[\beta]$ are in $\pi_1(S^1, 1)$. We must show that
\[ \text{deg}([\alpha] \circ [\beta]) = \text{deg}[\alpha] + \text{deg}[\beta]. \]
If $\tilde{\alpha}$ and $\tilde{\beta}$ are the unique covering paths of $\alpha$ and $\beta$ which begin at $0$, then the path $f: I \to \mathbb{R}$ defined by
\[ f(t) = \begin{cases} \tilde{\alpha}(2t) & \text{if } 0 \le t \le \frac{1}{2} \\ \tilde{\alpha}(1) + \tilde{\beta}(2t - 1) & \text{if } \frac{1}{2} \le t \le 1 \end{cases} \]
is the covering path of $\alpha * \beta$ with initial point $0$. Thus $\text{degree}(\alpha * \beta) = f(1) = \tilde{\alpha}(1) + \tilde{\beta}(1) = \text{degree } \alpha + \text{degree } \beta$. Then
\[ \text{deg}([\alpha] \circ [\beta]) = \text{degree}(\alpha * \beta) = \text{degree } \alpha + \text{degree } \beta \]
\[ = \text{deg}[\alpha] + \text{deg}[\beta]. \]
\end{proof}
```

The most important topic of this section has been the Covering Homotopy Property. We shall see it again in a more general form in Chapter 5, and those who take additional courses in algebraic topology will find that it is one of the most useful concepts in homotopy theory.

#### 4.4 Examples of Fundamental Groups

We now know that the fundamental group of a circle is the group of integers and that the fundamental group of any contractible space is trivial. The observant reader has probably surmised that the fundamental group is difficult to compute, even for simple spaces.

Homeomorphic spaces have isomorphic fundamental groups. The proof of this fact is left as an exercise. In this section we shall present less stringent conditions which insure that two spaces have isomorphic fundamental groups. This will allow us to determine the fundamental groups of several spaces similar to $S^1$. In the latter part of the section we shall prove a theorem which shows that the fundamental group of the $n$-sphere $S^n$ is trivial for $n > 1$.

---

#### 4.4 Examples of Fundamental Groups

**Definition.** Let $X$ be a space and $A$ a subspace of $X$. Then $A$ is a *deformation retract* of $X$ means that there is a homotopy $H: X \times I \to X$ such that

$$H(x, 0) = x, \quad H(x, 1) \in A, \quad x \in X,$$

$$H(a, t) = a, \quad a \in A, \quad t \in I.$$

The homotopy $H$ is called a *deformation retraction*.

**Theorem 4.8.** *If $A$ is a deformation retract of a space $X$ and $x_0$ is a point of $A$, then $\pi_1(X, x_0)$ is isomorphic to $\pi_1(A, x_0)$.*

```latex
\begin{proof}
Let $H: X \times I \to X$ be a deformation retraction of $X$ onto $A$. Then if $\alpha$ is a loop in $X$ with base point $x_0$, $H(\alpha(\cdot), 1)$ is a loop in $A$ with base point $x_0$. We therefore define $h: \pi_1(X, x_0) \to \pi_1(A, x_0)$ by
\[ h([\alpha]) = [H(\alpha(\cdot), 1)]. \]
For $[\alpha]$, $[\beta]$ in $\pi_1(X, x_0)$,
\[ h([\alpha] \circ [\beta]) = h([\alpha * \beta]) = [H(\alpha * \beta(\cdot), 1)] = [H(\alpha(\cdot), 1) * H(\beta(\cdot), 1)] \]
\[ = h([\alpha]) \circ h([\beta]), \]
so $h$ is a homomorphism.

The fact that $H(\alpha(\cdot), 1)$ is equivalent to $H(\alpha(\cdot), 0) = \alpha$ as loops in $X$ insures that $h$ is one-to-one. If $[\gamma]$ is in $\pi_1(A, x_0)$, then $\gamma$ determines a homotopy class (still called $[\gamma]$) in $\pi_1(X, x_0)$. Since $H$ leaves each point of $A$ fixed, then
\[ h([\gamma]) = [H(\gamma(\cdot), 1)] = [\gamma], \]
so $h$ maps $\pi_1(X, x_0)$ onto $\pi_1(A, x_0)$. This completes the proof that $h$ is an isomorphism.
\end{proof}
```

**Example 4.2.** Consider the punctured plane $\mathbb{R}^2 \setminus \{p\}$ consisting of all points in $\mathbb{R}^2$ except a particular point $p$. Let $A$ be a circle with center $p$ as shown in Figure 4.8.

***

**Figure 4.8**
*Description of Figure 4.8:*
A diagram showing a point $p$ as the center of a circle $A$.
- A ray extends from $p$ through a point $x$ in the plane.
- The intersection of this ray with the circle $A$ is labeled $r(x)$.
***

For $x \in \mathbb{R}^2 \setminus \{p\}$, the half line from $p$ through $x$ intersects the circle $A$ at a point $r(x)$. This function $r$ is clearly a retraction of $\mathbb{R}^2 \setminus \{p\}$ onto $A$. Define a homotopy $H: (\mathbb{R}^2 \setminus \{p\}) \times I \to \mathbb{R}^2 \setminus \{p\}$ by

$$H(x, t) = tr(x) + (1 - t)x, \quad x \in \mathbb{R}^2 \setminus \{p\}, \quad t \in I.$$

---

It is easy to see that $H$ is a deformation retraction, so $A$ is a deformation retract of $\mathbb{R}^2 \setminus \{p\}$. Thus

$$\pi_1(\mathbb{R}^2 \setminus \{p\}) \cong \pi_1(A) \cong \mathbb{Z}.$$

**Example 4.3.** Consider an annulus $X$ in the plane. Both the inner and outer circles of $X$ are deformation retracts, so $\pi_1(X)$ is the group of integers.

**Example 4.4.** Each of the following spaces is contractible, so each has fundamental group $\{0\}$:
(a) a single point,
(b) an interval on the real line,
(c) the real line,
(d) Euclidean $n$-space $\mathbb{R}^n$,
(e) any convex set in $\mathbb{R}^n$.

**Theorem 4.9.** *Let $X$ and $Y$ be spaces with points $x_0$ in $X$ and $y_0$ in $Y$. Then*

$$\pi_1(X \times Y, (x_0, y_0)) \cong \pi_1(X, x_0) \oplus \pi_1(Y, y_0).$$

```latex
\begin{proof}
Let $p_1$ and $p_2$ denote the projections of the product space $X \times Y$ on $X$ and $Y$ respectively:
\[ p_1(x, y) = x, \quad p_2(x, y) = y, \quad (x, y) \in X \times Y. \]
Any loop $\alpha$ in $X \times Y$ based at $(x_0, y_0)$ determines loops
\[ \alpha_1 = p_1\alpha, \quad \alpha_2 = p_2\alpha \]
in $X$ and $Y$ based at $x_0$ and $y_0$ respectively. Conversely, any pair of loops $\alpha_1$ and $\alpha_2$ in $X$ and $Y$ based at $x_0$ and $y_0$ respectively determines a loop $\alpha = (\alpha_1, \alpha_2)$ in $X \times Y$ based at $(x_0, y_0)$. The function
\[ h: \pi_1(X \times Y, (x_0, y_0)) \to \pi_1(X, x_0) \oplus \pi_1(Y, y_0) \]
defined by
\[ h([\alpha]) = ([\alpha_1], [\alpha_2]), \quad [\alpha] \in \pi_1(X \times Y, (x_0, y_0)), \]
is the required isomorphism.
\end{proof}
```

**Example 4.5.** The torus $T$ is homeomorphic to the product $S^1 \times S^1$. Hence

$$\pi_1(T) \cong \pi_1(S^1) \oplus \pi_1(S^1) \cong \mathbb{Z} \oplus \mathbb{Z}.$$

**Example 4.6.** An $n$-dimensional torus $T^n$ is the product of $n$ unit circles. Hence $\pi_1(T^n)$ is isomorphic to the direct sum of $n$ copies of the group of integers.

**Example 4.7.** A closed cylinder $C$ is the product of a circle $S^1$ and a closed interval $[a, b]$. Thus

$$\pi_1(C) \cong \pi_1(S^1) \oplus \pi_1([a, b]) \cong \mathbb{Z} \oplus \{0\} \cong \mathbb{Z}.$$

---

#### 4.4 Examples of Fundamental Groups

**Theorem 4.10.** *Let $X$ be a space for which there is an open cover $\{V_i\}$ of $X$ such that*
*(a) $\bigcap V_i \neq \varnothing$,*
*(b) each $V_i$ is simply connected, and*
*(c) for $i \neq j$, $V_i \cap V_j$ is path connected. Then $X$ is simply connected.*

```latex
\begin{proof}
Since each of the open sets $V_i$ is path connected and their intersection is not empty, it follows easily that $X$ is path connected. Let $x_0$ be a point in $\bigcap V_i$. We must show that $\pi_1(X, x_0)$ is the trivial group.

Let $[\alpha]$ be a member of $\pi_1(X, x_0)$. Then $\alpha: I \to X$ is a continuous map, so the set of all inverse images $\{\alpha^{-1}(V_i)\}$ is an open cover of the unit interval $I$. Since $I$ is compact, this open cover has a Lebesgue number $\epsilon$. Then there is a partition
\[ 0 = t_0 < t_1 < t_2 < \dots < t_n = 1 \]
of $I$ such that if $0 \le j \le n - 1$, then $\alpha([t_j, t_{j+1}])$ is a subset of some $V_i$. (We need only require that successive terms of the partition differ by less than $\epsilon$.)

Let us alter the notation of the open cover $\{V_i\}$, if necessary, so that
\[ \alpha([t_j, t_{j+1}]) \subset V_j, \quad 0 \le j \le n - 1. \]
Letting
\[ \alpha_j(s) = \alpha((1 - s)t_j + st_{j+1}), \quad s \in I, \]
we have a sequence $\{\alpha_j\}_{j=0}^{n-1}$ of paths in $X$ such that $\alpha_j(I)$ is a subset of the simply connected set $V_j$, and
\[ [\alpha] = [\alpha_0 * \alpha_1 * \alpha_2 * \dots * \alpha_{n-1}]. \]
This process is illustrated for $n = 4$ in Figure 4.9.
\end{proof}
```

***

**Figure 4.9**
*Description of Figure 4.9:*
A diagram illustrating the decomposition of a loop $\alpha$ into smaller paths $\alpha_i$ and their homotopies.
- The loop starts and ends at $\alpha(0) = \alpha(4) = x_0$.
- Points along the loop are labeled $\alpha(t_1)$, $\alpha(t_2)$, and $\alpha(t_3)$.
- Individual segments of the loop are labeled $\alpha_0$, $\alpha_1$, $\alpha_2$, and $\alpha_3$.
- Paths connecting $x_0$ to the partition points $\alpha(t_j)$ are labeled $\rho_1$, $\rho_2$, and $\rho_3$.
***

```latex
\begin{proof}[Proof (continued)]
Since $V_{j-1} \cap V_j$ is path connected, there is a path $\rho_j$ from $x_0$ to $\alpha(t_j)$, $1 \le j \le n - 1$, lying entirely in $V_{j-1} \cap V_j$. (Note that $\alpha(t_j)$ is the terminal point of $\alpha_{j-1}$ and the initial point of $\alpha_j$.) Since the product $\bar{\rho}_j * \rho_j$ of $\rho_j$ and its reverse is equivalent to the constant loop at $x_0$, then
\[ [\alpha] = [\alpha_0 * \bar{\rho}_1 * \rho_1 * \alpha_1 * \bar{\rho}_2 * \rho_2 * \alpha_2 * \dots * \bar{\rho}_{n-1} * \rho_{n-1} * \alpha_{n-1}] \]
\[ = [\alpha_0 * \bar{\rho}_1] \circ [\rho_1 * \alpha_1 * \bar{\rho}_2] \circ \dots \circ [\rho_{n-2} * \alpha_{n-2} * \bar{\rho}_{n-1}] \circ [\rho_{n-1} * \alpha_{n-1}]. \]
\end{proof}
```

---

The term in this product determined by $\alpha_j$ is the homotopy class of a loop lying in the simply connected set $V_j$. Hence each term of the product represents the identity class, so $[\alpha]$ must be the identity class as well. Thus $\pi_1(X) = \{0\}$, and $X$ is simply connected. $\square$

**Example 4.8.** It is left as an exercise for the reader to show that $S^n$, $n > 1$, has an open cover with two members satisfying the requirements of Theorem 4.10. It then follows that $\pi_1(S^n) = \{0\}$ for $n > 1$.

#### 4.5 The Relation between $H_1(K)$ and $\pi_1(|K|)$

The fundamental group is defined for every topological space, and we have defined homology groups for polyhedra. If $|K|$ is a polyhedron with triangulation $K$, how are the groups $H_1(K)$ and $\pi_1(|K|)$ related? For our examples thus far (interval, circle, torus, cylinder, annulus, and $n$-sphere), $\pi_1(|K|)$ and $H_1(K)$ are isomorphic. This is not true in general. The precise answer is given by Theorem 4.11 which is stated here with only an outline of the proof. Complete proofs can be found in [2], Section 8-3 and in [6], Section 12.

**Theorem 4.11.** *If $K$ is a connected complex, then $H_1(K)$ is isomorphic to the quotient group $\pi_1(|K|)/F$ where $F$ is the commutator subgroup of $\pi_1(|K|)$. Thus whenever $\pi_1(|K|)$ is abelian, $\pi_1(|K|)$ and $H_1(K)$ are isomorphic.*

**Outline of Proof.** Choose a vertex $v$ of $K$ as the base point for the fundamental group. For each oriented 1-simplex $\sigma_i$ of $K$, let $\alpha_i$ denote a linear homeomorphism from $[0, 1]$ onto $\sigma_i$; the $\alpha_i$ are called *elementary edge paths*. An *edge loop* is a product of elementary edge paths with $v$ as initial point and terminal point. Note that an edge loop $\alpha_1 * \alpha_2 * \dots * \alpha_n$ corresponds in a natural way to a 1-cycle $1 \cdot \sigma_1 + 1 \cdot \sigma_2 + \dots + 1 \cdot \sigma_n$.

Although we shall not go into the lengthy details, it is true that (a) if an edge loop is equivalent to the constant loop at $v$, then the corresponding 1-cycle is a boundary; (b) if two edge loops are equivalent, then their corresponding 1-cycles are homologous; and (c) each loop in $|K|$ with base point $v$ is equivalent to an edge loop.

A homomorphism

$$f: \pi_1(|K|, v) \to H_1(K)$$

may now be defined as follows: For $[\alpha] \in \pi_1(|K|, v)$, let $\hat{\alpha} = \alpha_1 * \alpha_2 * \dots * \alpha_n$ be an edge loop equivalent to $\alpha$. Define the value $f([\alpha])$ to be the homology class determined by the 1-cycle which corresponds to $\hat{\alpha}$. Then $f$ is a homomorphism from $\pi_1(|K|, v)$ onto $H_1(K)$ whose kernel is the commutator subgroup $F$. It follows from the First Homomorphism Theorem (Appendix 3) that the quotient group $\pi_1(|K|, v)/F$ is isomorphic to $H_1(K)$. $\square$

The fundamental group was defined by Poincaré in *Analysis Situs*, the same paper in which he introduced homology theory, and the relation between homology and homotopy given in Theorem 4.11 was known to him.

---

#### 4.5 The Relation between $H_1(K)$ and $\pi_1(|K|)$

Poincaré did not prove the relation, but he stated in *Analysis Situs* that "fundamental equivalence" of paths in the homotopy sense corresponded precisely to homological equivalence of 1-chains except for commutativity. Since the commutator subgroup $F$ of a group $G$ is the smallest subgroup for which $G/F$ is abelian, it is sometimes said that $H_1(K)$ is "$\pi_1(|K|)$ made abelian."

Both the homology and homotopy relations investigate the structure of a topological space by examining the connectivity or "holes in the space." Note that homotopy is more easily defined and conceptually simpler. It does not require elaborate explanations of chains, boundaries, cycles, or quotient groups. Homotopy applies immediately to general topological spaces and does not require the special polyhedral structure that we used for homology. Thus homotopy has some real advantages over homology.

Taking the other point of view, homology is in some ways preferable to homotopy. The fundamental group is difficult to determine rigorously, even for simple spaces. Recall, for example, our computation of $\pi_1(S^1)$ and the proof of Theorem 4.4 showing that each contractible space is simply connected. We found in Chapter 2 that homology groups are effectively calculable, for pseudomanifolds at least, because of the simplicial structure of the underlying complexes. Note also that the fundamental group overlooks the existence of higher dimensional holes in $S^n$, $n > 1$. To describe higher dimensional connectivity by the homotopy concept, we need a generalization of the fundamental group to higher dimensions. That is to say, we need homotopy analogues of the higher dimensional homology groups. After giving some applications of the fundamental group in Chapter 5, we shall study the higher homotopy groups in Chapter 6.

In defining the homology and homotopy relations, Poincaré hoped to give an algebraic system of topological invariants that could be used to classify topological spaces, especially manifolds. Ideally, one would hope for a sequence of groups which are reasonably amenable to computation and have the property that two spaces are homeomorphic if and only if their corresponding groups are isomorphic. As pointed out earlier (Theorem 2.11), the homology characters, and thus the homology groups, provide such a classification for 2-manifolds. Poincaré's hope that the homology groups would provide a similar classification for 3-manifolds was not fulfilled. Poincaré himself showed in 1904 that two 3-manifolds may have isomorphic homology groups and not be homeomorphic. More specifically, he found a 3-manifold whose homology groups are isomorphic to those of the 3-sphere $S^3$ but which is not simply connected, and therefore not homeomorphic to $S^3$.

Poincaré was greatly preoccupied with the classification problem. He hoped that the fundamental group would overcome the deficiencies of homology theory in the classification of 3-manifolds. It does not, however, for J. W. Alexander showed in 1919, seven years after Poincaré's death, that there exist nonhomeomorphic 3-manifolds having isomorphic homology groups and isomorphic fundamental groups [26]. Alexander's examples

---

involved fundamental groups of order five and left unanswered the famous Poincaré Conjecture:

**The Poincaré Conjecture.** *Every simply connected 3-manifold is homeomorphic to the 3-sphere.*

The classification problem, even for 3-manifolds, and the Poincaré Conjecture remain unsolved. Nonetheless, the fundamental group has been a powerful tool and a great stimulus for research in algebraic topology. It seems to lie at the very base of many difficult mathematical problems. We shall see some of its power as we study an important class of spaces, the covering spaces, in Chapter 5.

#### EXERCISES

**1.** Prove the Continuity Lemma.

**2.** Show that multiplication in $\pi_1(X, x_0)$ is well defined. In other words, show that if $\alpha \sim_{x_0} \alpha'$ and $\beta \sim_{x_0} \beta'$, then

$$\alpha * \beta \sim_{x_0} \alpha' * \beta'.$$

**3.** Complete the details in the proofs of Lemmas A and C.

**4.** Given a space $X$ and loops $\alpha$, $\beta$, $\gamma$, and $\delta$ with base point $x_0$ in $X$, exhibit a homotopy which shows that

$$(\alpha * \beta) * (\gamma * \delta) \sim_{x_0} \alpha * ((\beta * \gamma) * \delta).$$

**5.** Let $\alpha$ and $\beta$ be paths in a space $X$ both having initial point $x_0$ and terminal point $x_1$. Prove that $\alpha$ is equivalent to $\beta$ if and only if the product $\alpha * \bar{\beta}$ of $\alpha$ and the reverse of $\beta$ is equivalent to the constant loop at $x_0$.

**6.** Let $\rho$ be a loop in $X$ with base point $x_0$. Prove that the induced homomorphism given by the proof of Theorem 4.3,

$$P: \pi_1(X, x_0) \to \pi_1(X, x_0),$$

is the identity isomorphism if and only if the homotopy class $[\rho]$ belongs to the center of $\pi_1(X, x_0).$

**7.** Let $\rho$ and $\rho'$ be paths in a space $X$ both having initial point $x_0$ and terminal point $x_1$. Give a necessary and sufficient condition that the homomorphisms induced by $\rho$ and $\rho'$ in the proof of Theorem 4.3 be identical. Prove that your condition is correct.

**8.** Complete the proof of Theorem 4.4.

**9.** Give an example of a simply connected space which is not contractible.

**10.** Give an example of a contractible space $X$ and a point $x_0$ in $X$ for which there is no contraction of $X$ to $x_0$ which leaves $x_0$ fixed throughout the contracting homotopy.

**11.** In analogy with the Generalized Covering Path Property, state and prove a "Generalized Covering Homotopy Property" for $S^1$.

---

#### 4 Exercises

**12.** Prove that a path connected space is simply connected if and only if every pair of paths in $X$ having common initial point and common terminal point are equivalent.

**13.** Let $f: X \to Y$ be a continuous function. Prove that the function $f_*: \pi_1(X, x_0) \to \pi_1(Y, f(x_0))$ defined by

$$f_*([\alpha]) = [f\alpha], \quad [\alpha] \in \pi_1(X, x_0),$$

is a homomorphism. Show in particular that $f_*$ is well-defined.

**14.** Prove that homeomorphic spaces have isomorphic fundamental groups.

**15.** In the proof of Theorem 4.5, explain why the covering path $\tilde{\sigma}$ has initial point $0$.

**16.** Explain why the loop $\gamma_n: I \to S^1$ defined by

$$\gamma_n(t) = \exp(2\pi i n t), \quad t \in I,$$

has degree $n$ for each integral value of $n$.

**17.** Determine the fundamental group of the Möbius strip.

**18.** Prove that every deformation retract of a space $X$ is a retract of $X$. Show by example that the converse is false.

**19.** Let $X$ be a space consisting of two 2-spheres joined at a point. Prove that $\pi_1(X) = \{0\}$.

**20.** Let $X$ be a space consisting of two circles joined at a point. Prove that $\pi_1(X)$ is a free group on two generators and hence that there are nonabelian fundamental groups.

**21.** Show that the function $h$ in the proof of Theorem 4.9 is an isomorphism.

**22.** Show that the $n$-sphere $S^n$, $n > 1$, satisfies the hypotheses of Theorem 4.10 and that $\pi_1(S^n) = \{0\}$.

**23.** Prove that each of the following spaces is contractible:
(a) the real line,
(b) a convex set in $\mathbb{R}^n$,
(c) the upper hemisphere $H$ of $S^n$: $H = \{(x_1, \dots, x_{n+1}) \in S^n : x_{n+1} \ge 0\}$,
(d) $S^n \setminus \{p\}$ where $p$ is a particular point in $S^n$.

**24.** Let $p$ be a point in $S^1$. Prove that $S^1 \times \{p\}$ is a retract but not a deformation retract of $S^1 \times S^1$.

**25.** Prove that the fundamental group of punctured $n$-space $\mathbb{R}^n \setminus \{p\}$ is trivial for $n > 2$.

**26.** Let $G$ be a topological group with identity element $e$. If $\alpha, \beta$ are loops in $G$ with base point $e$, we can define a new product $\cdot$ by

$$\alpha \cdot \beta(t) = \alpha(t)\beta(t)$$

where juxtaposition of $\alpha(t)$ and $\beta(t)$ indicates their group product in $G$.
(a) Prove that the operation $\cdot$ on loops based at $e$ induces a group operation on $\pi_1(G, e)$.

---

(b) Show that the operation induced by $\cdot$ is exactly the same as the usual product $\circ$ on $\pi_1(G, e)$. (*Hint:* Prove that $(\alpha * c) \cdot (c * \beta) = \alpha * \beta$ where $c$ is the constant loop at $e$.)
(c) Prove that $\pi_1(G, e)$ is abelian. (*Hint:* Compare $(\alpha * c) \cdot (c * \beta)$ and $(c * \alpha) \cdot (\beta * c)$.)

**27.** If $K$ is a complex with combinatorial components $K_1, \dots, K_r$, how is $H_1(K)$ related to the groups $\pi_1(|K_1|), \dots, \pi_1(|K_r|)$?

**28.** Give an intuitive explanation of each of the following statements:
(a) The degree of a loop $\alpha$ in $S^1$ is the number of times that $\alpha$ wraps the interval $I$ around the circle.
(b) The circle has one "hole" so its fundamental group is the group $\mathbb{Z}$ of integers.
(c) The fundamental groups of a torus and a figure eight (two circles joined at a point) are not isomorphic.

**29.** (a) Show that a loop in a space $X$ may be considered a continuous map from $S^1$ into $X$. (*Hint:* Consider the quotient space of $I$ obtained by identifying $0$ and $1$ to a single point.)
(b) Let $\alpha$ be a loop in $S^1$. Explain the relation between the degree of $\alpha$ in the homotopy sense and its degree in the homology sense.

**30.** Let $X$ be a space consisting of two spheres $S^m$ and $S^n$, where $m, n \ge 2$, tangent at a point. Prove that $\pi_1(X) = \{0\}$.