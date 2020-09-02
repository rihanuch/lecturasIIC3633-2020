# Document clustering based on non-negative matrix factorization

Los métodos que existen para clustering de textos en su cuerpo son cada día más necesarios para poder organizar mejor la información y para que se pueda tener navegación eficiente de esta misma. Por un lado, una mejora en esta área podría traer beneficios de operación y de precisión de clasificación de contenido, que es precisamente lo que el paper trata con *clustering* basado en factorización matricial no negativa versus métodos actuales como SVD.

Un aspecto bastante interesante es el desafio que se aborda y se quiere solucionar que es el poder hacer *clustering* de los documentos sin contexto o información previa o categorias. En este sentido es interesante la idea que se plantea de que un texto está compuesto de suma de información mixta con sus temas. Esto llama la atención debido a que la interpretación humana de un texto a veces puede llevar a considerar que **sí** hay conjuntos que *restan* al tema globa, por lo que esas "entradas" deberían tomar valores negativos.


Otro aspecto interesante es que el hecho de el *cluster* de las ideas generales del contenido de un documento puede ser deducido de manera más directa con NMF que con el espacio ortogonal LSI. Esto se traduce en una reducción de cómputo necesario para poder encontrar el *cluster* final pero sigue teniendo un tiempo de ejecución de O(tkn), sin comparar con métodos *state of the art* para realizar LSI ortogonales.

En conjunto con la idea anterior, otro aspecto que deja que desear el paper se la disparidad de los sets que se utilizan para probar la implementación. Por un lado los sets son antiguos, por lo que no necesariamente se adaptan bien a contenidos actuales por fomas de escritura, ideas, etc. y por otro lado, solo se utiliza dos *testsets*.

---
## Notas del texto (guía de esquema de ideas)
**Por hacer:**
- Un mini resumen del tema del *paper*, como contexto
- Comentario de aspectos interesantes
- Crítica a lo que consideren que no fue adecuado

### Ideas centrales
- Traditional text search engines fit well for coveringone end of the spectrum, which is a keyword-based searchfor specific documents, while browsing through a cluster hierarchy is more effective for serving the information retrieval needs from the rest part of the spectrum
- Each axis in the space derived by the NMF has a much more straightforward correspondence with each document cluster than in thespace derived by the SVD, and thereby document clustering results can be directly derived without additional clustering operations.

### *Challenges*:
- accurately clustering documents without domain-dependent background information, nor predefined document categories or a given list of topicsis still a challenging task

### Aspecto interesantes
- Because it is more natural  to consider  each document as  an additive ratherthan subtractive mixture of the underlying topics, the linear combination coefficients should all take non-negative values
- The cluster membership of each document can be easily identified from NMF, while the latent semantic space derived by the LSI orthe spectral clustering does not provide a direct indication ofthe data partitions, and consequently, traditional data clus-tering methods such as K-means have to be applied in thiseigenvector space to find the final set of document clusters.
- Computational time O(tkn)


### Críticas
- Disparidad de sets de comparación
- Uso de documentos no contetmporáneos -> puede que cambie significativamente forma de escritura de contenido y por lo tanto también los resultados obtenidos



DOCUMENT REPRESENTATION