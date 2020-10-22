# Deep Learning based Recommender System: A Survey and New Perspectives

Actualmente los sistemas recomendadores son fundamentales para poder mejorar el funcionamiento de tiendas onlines y tener mejor interacción con los usuarios, pero no se ha tenido avances significativos con los nuevos métodos de DP. Dentro de este contexto, el *paper* habla de los beneficios que la aplicación de métodos de recomendación basados en DL pueden tener al momento de recomendar, tanto en resultados como en costo de cómputo.

Un aspecto interesante del *paper* es cuando se menciona que lass arquitecturas neuronales son diferenciables y que proveen, en general, *biases* adecuados para los diferente tipos de datos que se entreguen como *input*. Esto pressenta la oportunidad de poder agilizar el desarrollo de modelos de recomendación gracias a que uno puede partir *off-the-line* con un modelo más robusto en base a los inputs que se entregue, haciéndolos más atractivos como *baselines*. 

Del mismo modo, también se menciona que:
> ... DeepFM does not require tedious feature engineering.

Esto también presenta una ventaja al momento de desarrollar modelos de recomendación basados en *Deep Learning* al requerir menos *fine-tuning* inicial, permitiendo que los desarrolladores se enfoquen en los datos y modelos en si mismos más que en las features del modelo.

Por otro lado, un *challenge* que es presenta dentroo odel *paper* es el hecho de que no se puede tener un análisis tan fino de los pesos de los modelos que se generan debido a que casi no son interpretables. Esto es algo sumamente relevante debido a que, como se ha visto en *papers* anteriores, la explicabilidad sirve mucho, en especial para los usuarios que tengan interacciones normalmente con el modelo. Dado esto, el hecho de que no se pueda intepretar los pesos podría significar que se deba combinar los modelos de *DL* con otros tradicionales para así poder dar más *feedback* a los usuarios.

Habiendo dicho lo anterior, es interesante pensar que, tal como ses dice en el *paper*:
> Directly applying CNNs to vanilla collaborative filtering is also viable.

Es viable lo mencionado anteriormente, por lo que la aplicación de estos de manera combinada también es posible. El problema que puede tener esto es el costo de cómputo, pero esto también se ve relativamente solucionado gracias a que se puede reducir el *running cost* en un orden de maginitud. Al hacer esta combinación ses puede subentender que se puede tener "lo mejor de dos mundos" al poder presentarle al usuario explicabilidad mediante los modelos más clásicos y una mejor recomendación gracias a los modelos empleados con *DL*.

---
## Notas del texto (guía de esquema de ideas)
**Por hacer:**
- Un mini resumen del tema del *paper*, como contexto
- Comentario de aspectos interesantes
- Crítica a lo que consideren que no fue adecuado

### Ideas centrales
- This article aimsto provide a comprehensive review of recent research efforts on deep learning based recommender systems. More concretely,we provide and devise a taxonomy of deep learning based recommendation models, along with providing a comprehensive summary of the state-of-the-art.
- Recently, deep learning hasbeen revolutionizing the recommendation architectures dramatically and brings more opportunities to improvethe performance of recommender.

### *Challenges*:
- these three works are inuential in this research area, this survey lost sight ofother emerging high quality works
- in today’s research climate (and even industrial), there is completely no reason to not used deep learning based tools for developmentof any recommender system
- A common argument against deep neuralnetworks is that the hidden weights and activations are generally non-interpretable, limiting explainability.

### Aspecto interesantes
- One of the most attractive properties of neural architectures is that they are (1) end-to-end differentiable and (2) provide suitable inductive biases catered to the input data type
-  It replaces the wide componentwith a neural interpretation of factorization machine. Compared to wide & deep model, DeepFM does not require tedious feature engineering
-  By extending this model, Chen et al. [13] devised a locally-connected wide & deep learning model for largescale industrial-level recommendation task. It employs the ecient locally-connected network to replace thedeep learning component, which decreases the running time by one order of magnitud
- Directly applying CNNs to vanilla collaborative filtering is also viable.

### Críticas
- 
