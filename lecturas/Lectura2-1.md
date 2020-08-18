# Collaborative Filtering for Implicit Feedback Datasets

El *paper* trabaja principalmente el temade CF para feedback **implícito** por parte de los usuarios, respondiendo *mal* al feedback explícito por el modelo mismo que se decidió implementar. Se presentan varias ventajas frente a otros modelos de CF en términos de precisión y de costo computacional.

Un aspecto interesante del *paper* es lo mismo mencionado anteriormente, ya que se dice que el modelo recomendador no funcionaría bien cond atos de feedback explícito. Esto llama la atención en el sentido en que hoy en día lo ideal es poder recolectar la mayor cantidad de información posible para poder ser lo más preciso en la recomendación entregada. Dado esto, lo ideal sería poder proponer un modelo que trabaje de manera conjunta con un posible *feedback* explícito, lo que podría mejorar, potencialmente, los resultados.

Por otro lado, otro aspecto interesante es que logran acotar el tiempo del algorítmo a uno lineal mediante los "recortes de esquinas" que hacen y mencionan. Al mismo tiempo, otro concepto interesante es el de limitar el período de entrenamiento a 4 semanas, por la programación de la TV. Esto es llamativo dado que no aplica tanto a hoy por los servicios de *streaming* que existen, en los que un *show* puede durar mucho más que eso.

Algo que me llamó mucho la atención y creo que debería ser más especificado es el hecho de que se hace pruebas dentro de contextos en que el usuario no tiene un control más granular de lo que ve, como lo podría ser Netflix, lo que en paret podría afectar los resutlados. Esto se debe a que al tener más control los usuarios puden ver una serie, o gran parte de ella, en lo que comunmente se conoce como *binging*, por lo que el concepto de ir reduciendo la atención de las personas y, por lo tanto su relevancia, no aplica tan bien.

---
## Notas del texto (guía de esquema de ideas)
**Por hacer:**
- Un mini resumen del tema del *paper*, como contexto
- Comentario de aspectos interesantes
- Crítica a lo que consideren que no fue adecuado

### Ideas centrales
- we do not have anydirect input from the users regarding their preference
- No explicit profile needed
- Predict r_{u,i}, the unobserved value by user y for item i
- This reduces our latent factor model into a linear modelthat predicts preferences as a linear function of past actions
- We provide a latent factor algorithm that directly ad-dresses the preference-confidence paradigm


### *Challenges*:
- Cold start problem
- hard to reliablyinfer which items a user did not like.
- implicit feedback is very noisy
- it becomes much easier to predict popular programs, whileit is increasingly difficult to predict watching a non popular show

### Aspecto interesantes
- No negative feedback
- numerical value of implicit feeback is confidence, not preference
- No sparse matrix as 0 indicates not viewing TV
- Importantly,running time is linear in the size of the input

### Críticas
- However, our beliefs are associated withgreatly varying confidence levels.
- Based on beliefs
- Training period of 4 weeks on TV only applies to TV schedules. For example a TV series can be on netflix for much more than that
- The television might simply have beenleft on while the viewer does something else (generalizes preferences and removes binge time)
- In addition, we are cur-rently unable to track user reactions to our recommenda-tions.  (difficult to accurately measure efficiency)
- 