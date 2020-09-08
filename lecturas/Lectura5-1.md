# Combining Predictions for Accurate RecommenderSystems

Una mejora de precisión de un sistema recomendador se puede traducir prácticamente de forma directa en un mayor *revenue stream* para una compañía. En este sentido, las empresas actualmente estan buscando formas de mejorar sus sitemas recomendadores. Al mismo tiempo, es importante notar que está demostrado empíricamente que un sistema basado en CF es más preciso que uno que no lo es. Dado lo anterior, el *paper* habla de que al realizar un *blend* de múltiples sistemas recomendadores basados en CF se puede conseguir mejoras significativas, tanto en tiempos de cómputo como en precisión (basada en RSME).

Un aspecto muy interesante del *paper* es el hecho de que los pesos de los parámetros que se entregan a los diferentes sistemas recomendadores en el *blend* final sale a partir de una optimización de una regresión lineal. Esto es particularmente interesante cuando se menciona que los pesos pueden tomar valores negativos para ciertos aspectos. A partir de lo anterior surge la duda de por qué se dejan esos modelos si están produciendo un contrapeso a una buena recomendación, lo cual no se menciona durante el paper y podría ser muy aclarador en el razonamiento.

Por otro lado, otro aspecto interesante que se presenta a lo largo de este paper es el entrenamiento secuencial que se hace de los modelos de recomendación. Esto último, según se menciona, permite que los modelos vayan mejorando a partir de los errores de los anteriores, generando resultados más precisos. A priori, esto parece una idea muy innovadora, pero también una que debe ser tomada con precaución, ya que podría, eventualmente, provocar un overfitting de los modelos que se entrenan al final, algo que quizás puede que se vea reflejado en la saturación de mejoras en recomendación al alcanzar los 100 modelos.


Llama mucho la atención que a lo largo del paper se tiene un enfoque casi en la totalidad de su tiempo en la reducción del RSME. Si bien esta métrica puede ser muy precisa, no es la única, por lo que al hacer este tipo de modelos también se debería tener en cuenta otras que existan para los modelos de CF, como lo podría ser MAP@K, por ejemplo. En este sentido, los autores optimizan los parámetros para minimizar el RSME, por lo que se debería evaluar los modelos entregados con otras métricas y otros datasets para dar más confianza de lo planteado.

---
## Notas del texto (guía de esquema de ideas)
**Por hacer:**
- Un mini resumen del tema del *paper*, como contexto
- Comentario de aspectos interesantes
- Crítica a lo que consideren que no fue adecuado

### Ideas centrales
- Analysis of Netflix prize dataset and use of CF: SVD, nighborhood, restricted boltzmann machine, asymetric factor model and global effects
- Linear combination of methods increses accuracy and outperforms any CF by its own
- Generating accurate predictions is of general interest (user and company) -> increses revenue
- An ensemble method combines the predictions of different algorithms (the ensemble) to obtain a final prediction. 

### *Challenges*:
- 

### Aspecto interesantes
- In this case, the combination coefficientshave to be determined by some optimization procedure, ingeneral by regularized linear regression (weight accuracy of each prediction)
- This enablesus to keep all the user-user correlations in memory by stor-ing the factorized version.  One particular correlation is thenjust a dot product of the corresponding features.
- In other words, the AFM model parameter-izes  only  item  features
- Sequential training on errors of previous model
- The curves with 1% and 2% data show a saturation effectat about 100 averaged models, i.e.  no improvement can beexpected with an increase of the number of averaged models above 100.

### Críticas
- Disparity of training of models (KRR given less data for computational times).
- Sole focus on RSME