# Evaluating Recommendation Systems

El *paper* plantea la idea de que no todos los sistemas recomendadores funcionan igual de bien para todo, sino que hay algunos que son mejores en ciertas áreas, mientras que al mismo tiempo no rinden bien en otras. En este sentido, se habla de parámetros y formas de enfocar los modelos y formas de evaluarlos apra así tener mejores resultados en general y poder aplicarlos de manera más efectiva para lo que están diseñados u optimizados. Esto es especialmente cierto para los modelos que están optimizados para funcionar en base a errores como lo son los de *RMSE* y *MAE*.

Cabe notar que debido a que es muy difícil eliminar todo tipo de sesgo siempre es probable que haya mejores soluciones y cada vez más complejas. Dentro de esta misma línea, los autores sugieren lo siguiente para poder calibrar mejor los modelos y evaluar los pro y contras de ciertos eliminadores de sesgos

> ...we have to either run additional experiments to understand this aspect, or use the opinions of domain experts.

El problema con utilizar la visión de los expertos en un área como la recomendación es que es altamente probable que estas mismas opiniones tiendan a estar sesgadas con sus preferencias, cosa que no se menciona en el paper. Un experto puede considerar que es mucho mejor un *trade-off* que otro, pero no hay uno que sea objetivo necesariamente.

Un aspecto interesante es la consideración de la métrica *serendipity*, la cual es difícil de cuantificar a priori, ya que la naturaleza de esta idea es cualitativa y no cuantitativa. En este mismo sentido, es interesante que lo hayan considerado y que se establezcan consideraciones para utilizarlo y que no es algo modelable de manera fácil.

Por otro lado, otro aspecto interesante es que haga mencion e hincapie a que se deben tener *datasets* estandarizados para poder hacer comparaciones. Esto es muy importante de destacar porque en múltiples papers se da el caso de que se hacen comparaciones con *datasets* poco variados, por lo que genera que los autores hagan generalizaciones con casos puntuales. Dado esto, es importante que se normalicen y estandaricen los *sets* y que además, como se menciona, sean variados en términos de su origen y tipo.

Finalmente, es curioso que los autores hablen de la función utilidad como algo más significativo en algunso contextos que la precisión de una recomendación. Esto es criticable debido a que una recomendación precisa debería de por si considerar la utilidad que va a generar antes de recomendar. En otras palabras, debería estar integrada la utilidad, ya que es lo que siempre se debería buscar maximizar, una recomendación buena va a maximizar la utilidad del usuario, lo que se puede (muchas veces) traducir a utilidad monetaria u otras como las que plantean los autores. Dado esto, la utilidad debería considerarse como parte de una recomendación y no como una idea separada.

---
## Notas del texto (guía de esquema de ideas)
**Por hacer:**
- Un mini resumen del tema del *paper*, como contexto
- Comentario de aspectos interesantes
- Crítica a lo que consideren que no fue adecuado

### Ideas centrales
- Focus on comparative studies, where a few algorithms are compared using some evaluation metric, rather than absolute benchmarking of algorithms.
-  It is now widely agreed that accurate predictions are crucial but insufficient to deploy a good recommendation engine

### *Challenges*:
- Eliminate bias from user responses is very complex
- Make relevant real world tests. For example, a test system that provides irrelevant recommendations, may discourage the test users from using the real system ever again.

### Aspecto interesantes
- In many cases it is also difficult to say how these trade-offs affect the overall performance of the system, and we have to either run additional experiments to understand this aspect, or usethe opinions of domain experts.
- Uso de *datasets* normalizados para comparar
- The goal of the offline experiments is to filter out inappropriate approaches, leaving a relatively small set of candidate algorithms to be tested by the more costly user studies or online experiments.
- When presenting two sets of results, there can be certain biases due to location. For example, users from many cultures tend to observe results left to right and top to bottom. Thus, the user may observe the results displayed on top as superior
- Use of sign test due to simplicity and lack of assumptions over the distribution of cases.
- when selecting an algorithm for use in a particular task, it is preferable to make the choice based on a measure that reflects the specific needs at hand.
-  It is important to check the effect of serendipity over time, because users might at first be intrigued by the unexpected recommendations and try them out


### Críticas
- In many cases we can ask qualitative questions, before, during, and after the taskis completed
- Measure accuracy of cold starts. Speaks of measuring it but it describes threshold, or way to consider them of it is wise to make a trade-off, not how well these can be recommended of predicted
- > For such recommenders, measuring the utility, or the expected utility of the recommendations may be more significant than measuring the accuracy of recommendations. It is also possible to view many of the other properties, such as diversity or serendipity, as different types of utility functions, over single items or over lists. In this paper, however, we define utility as the value that either the system or the user gains from a recommendation