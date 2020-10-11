# Multi-Armed Recommender SystemBanditEnsembles

Los sistemas recomendadores actuales cada vez han tendido a utilizar ensambles en los que se hcae una mezcla de métodos y algoritmos de recomendación. Dado esto, el paper propone unna manera de abordar una manera más realista en la obtención de reultados online. Esto debido a que muchos de los métodos que se han utilizado tienden a estar enfocados en resulatdos *offline*, dejando de lado los resultados reales de los cuales se puede obtener feedback acorde a la reacción de los usuarios.

Un punto interesante del *paper* es la consideración de la evolución de los gustos de los usuarios y de los catálogos. Esto llama la atención debido a que la mayor parte de los sistemas recomendadores tradicionales están adaptados a un entorno más "estático", es decir el poder precomputar todas las probabiñidades y luego "sacar" de ahí. En este sentido, es muy interesante debido a que esto presenta un *challenge* adicional a la recomendación en si misma, que es el poder hacer el cómputo en tiempo *parcialmete* real.

Por otro lado, otro aspecto interesante que se presenta en el paper es el hecho de que:
> ... in no situation  the  ensemble outperforms the best standalone algorithm (popularity).

Esto se muy interesante debido a que se está haciendo un *trade-off* entre precisión de recomendación "bruta" y lo que es realmentne "práctico" en una aplicación real. Dado esto, puede que el método presentado no sea mejor que el método específico para el que un algoritmo está diseñado, pero si es mucho más flexible y permite más aplicaciones.

Finalmente un aspecto criticable es la prueba de los métodos planteadoss con solo un *dataset*. Los resultados presentados serían más creibles y "fieles" si se hubiesen aplicado los mismos métodos con más de un dataset para así poder comparar resultados y evaluar si es una solución genenrailzada o específica para un tipo de pronlema como el de *Movielens 1M*,

---
## Notas del texto (guía de esquema de ideas)
**Por hacer:**
- Un mini resumen del tema del *paper*, como contexto
- Comentario de aspectos interesantes
- Crítica a lo que consideren que no fue adecuado

### Ideas centrales
- In this paper we consider a more realistic perspective bearing in mind the cyclic nature of the recommendation task where a large part of the system’s input is collected from the reaction of users to the recommendations they are delivered

### *Challenges*:
- One  of  the  challenges  in building  ensembles liesin  properly tuning the contribution of the combined algorithms to the aggre-gated output
- After the first 50 recommendations we can see that kNN  and  matrix  factorization start  to  catchup (their  slope  is steeper) but it is not enough for outperformingpopularity. 

### Aspecto interesantes
- As runtime conditions (data, users, item catalog, etc.)evolve, the performance of previ-ously well-behaved algorithms may degrade and hamper the en-semble  effectiveness –or  weaknesses  may  simply  surface  that had  gone  unnoticed  in  the  selection  phase
- Arms  can  be updatedafter  each  individual  recommenda-tions, or every certain number (a batch)of recommendations
-  Thus, only the initial training set is  common toall  the compared systems. The algorithms  within ensembles do share the same data,collected bythe ensemble.
-  This  comes  to  show  that  bandit  ensembles  are  able  to achieve non-obvious enhanced optimizations
- Note,  on the  other  hand,  thatin no situation  the  ensemble outperforms the best standalone algorithm (popularity)
- important  advantage  of  bandit  ensembles  is theirlow computational cost: they need to run just oneselected recommendationalgorithm,  and  not  all  the others

### Críticas
- Solo se una un dataset para comprobar datos (Movielens 1M)
