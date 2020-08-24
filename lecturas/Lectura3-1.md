# Performance of Recommender Algorithmson Top-N Recommendation Tasks



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
- The convenient assumption that an error metric such asRMSE can serve as good proxy for top-N accuracy is ques-tionable at best.

### *Challenges*:
- Long-tail distribution (conndensacion de items populares)
- 

### Aspecto interesantes
- Separación de T head y T long
- The similarity between itemiand itemjis measured asthe tendency of users to rate itemsiandjsimilarly.
- Se nota bias de user y de items
- Eliminación de denominador para beneficiar a vecinos similares
- PureSVDalso has the convenience of representing the users as a combination of item features
- 


### Críticas
- No se explica de dónde sale el *shrinking factor* y por qué es ese número
- i7 PC: no es preciso, muchas veces los cómputos tienden a ir a las tarjetas gráficas y tampoco se los hertz del procesador
- compara resultados en términos de RSME
- No se menciona resultado de SVD++ en *accuracy*, solo se dice que es similar
- no habla de rendimmiento en la práctica, sino que solo de resultados experimentales