# Performance of Recommender Algorithmson Top-N Recommendation Tasks

Los autores del *paper* hablan principalmente del problema que se ha generado en los ambientes de investigación debido a que se tiende a tomar los *RSME* como métrica en los sistemas recomendadores, pero que esta no se adapta bien a las recomendaciones del tipo Top-N. En este sentido, proponen métricas como *accuracy* en vez de *RSME* o *MAE* con tal de que se pueda hacer una buena evaluación de los sistemas recomendadores que entregan más que solo la "mejor" recomendación. Finalmente, se plantea el hecho de que no existe una relación clara entre las métricas establecidas y las propuestas (o al menos de manera trivial).

Un aspecto bien interesante a notar del *paper* es que cuantifica el *bias* de los usuarios y de los items entre ellos y aplica un factor de corrección para entregar mejores resultados. El problema con esto es que no se explicita cuánto afecta y cuánto mejor hace este factor de corrección del *bias* los modelos teóricos que presentan y tampoco entregan una noción de su utilidad, por lo que para lo que puede ser realmente, puede que sea inútil.

Otro concepto muy interesante es la manera en que realizaban ciertos cálculos era la eliminación del denominador para beneficiar a los vecinos similares menos populares. No se explica mucho el análisis numérico de lo que implica, pero, aprentemente, permite reducir el costo de cómputo en cierto modo mientras que al mismo tiempo logra la meta de no solo hacer recomendaciones triviales para los usuarios, "matando dos pájaros de un tiro".

En general el *paper* presenta varios aspectos criticables en térmios de que presentan afirmaciones que no son tan bien respaldadas, como por ejemplo el valor arbitrario del *shrinking factor*, el cual se menciona que es cercano a 100, pero no el porqué; o decir que los resultados de SVD++ son similares a otros, pero no se entrega la cifra. En este sentido, deja harto que dedsear en términos de precisión. Finalmente, algo sumamente criticable es que no se entregan los *specs* del computador en el cual se hicieron las pruebas para replicar los tests, solo se dice que fue un *Intel i7*, lo cual deja un rango extremadamente amplio de rendimiento y no habla de resultados aplicados, sino que solo téoricos.

Dicho lo anterior, creo que sería muy beneficioso que se hubiese hecho una aplicación más practica de lo obtenido en el paper para no quedarse solamente en lo teórico de los "resultados buenos" obtenidos, ya que es sumamente diferente que algo funcione bien de manera contrlada versus que lo haga en una aplicación real. 

---
## Notas del texto (guía de esquema de ideas)
**Por hacer:**
- Un mini resumen del tema del *paper*, como contexto
- Comentario de aspectos interesantes
- Crítica a lo que consideren que no fue adecuado

### Ideas centrales
- Common methodologies based on error metrics(such as RMSE) are not a natural fit for evaluating the top-N recommendation task, but top-n can be measured by accuracy metrics
- Algorithms suggests that algorithms optimized forminimizing RMSE do not necessarily perform as expected in terms of top-N recommendation task
- the performance of several **collaborative filtering** algorithmsin pursuing the top-N recommendation task
- no trivial relation bewtween error and accuracy
- The convenient assumption that an error metric such as RMSE can serve as good proxy for top-N accuracy is ques-tionable at best.

### *Challenges*:
- Long-tail distribution (conndensacion de items populares)

### Aspecto interesantes
- Separación de T head y T long
- The similarity between item i and item j is measured asthe tendency of users to rate items i and j similarly.
- Se nota bias de user y de items
- Eliminación de denominador para beneficiar a vecinos similares
- PureSVD also has the convenience of representing the users as a combination of item features


### Críticas
- No se explica de dónde sale el *shrinking factor* y por qué es ese número
- i7 PC: no es preciso, muchas veces los cómputos tienden a ir a las tarjetas gráficas y tampoco se los hertz del procesador
- compara resultados en términos de RSME
- No se menciona resultado de SVD++ en *accuracy*, solo se dice que es similar
- no habla de rendimmiento en la práctica, sino que solo de resultados experimentales