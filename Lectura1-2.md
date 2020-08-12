# Netflix Update: Try This at Home

El *paper* busca principalmente poder hacer un sistema para poder predecir cómo un usuario encontraría una película de Netflix a través de un concurso. En este el autor aprovechó de hacer descomposiciones matriciales SVD para así poder tomar ventaja que estas minimizan el MSE, cosa que era buscada como principal meta de recomendación del concurso.

Un aspecto interesante es el hecho de que se haya utilizado la descomposición SVD de las matrices, pero dejando de lado los valores inciertos (*unknown errors*) mientras que se utilizaba un método de derivación para las aproximaciones de esta descomposición. Esto es interesante debido a que se está haciendo un *trade-off* entre rendimiento y precisión, **dando prioridad al primero**. Esto tiene sentido hacerlo dentro del contexto de Netflix debido a la gran cantidad de información que se posee, siendo muy útil para usuarios que no son nuevos. 

Por otro lado, sería interesante intentar un *approach* híbrido en que se se descomponga las matrices en *sets* de usuarios nuevos y otras con películas nuevas. De esta manera se estaría haciendo SVD exacto y no aproximado, lo que potencialmente, podría mejorar los resultados y minimizar más el MSE debido a que los gustos no pueden ser inferidos.

Otro aspecto interesante es el hecho de que se haya utilizado una penalización de la magnitud de las *features* y el hecho de que hayan limitado el rango de la sugerencia si es más de 5 o menor a 1, lo cual, a vista simple, parece algo prometedor al darle un peso "variable" a los diferentes categorías que podrían ser un detractor para mirar la película.

Una crítica que se le puede hacer a la publicación es que, para efectos prácticos, se utiliza un número arbitrario de categorias de gustos para las películas y para los usuarios. No se da una explicación de dónde surge el número en el que se descompone, o al menos, no queda muy claro.

---
## Notas del texto (guía de esquema de ideas)
**Por hacer:**
- Un mini resumen del tema del *paper*, como contexto
- Comentario de aspectos interesantes
- Crítica a lo que consideren que no fue adecuado

### Ideas centrales
- Concurso de Netflix para poder predecir cómo un usuario *ratearia* una película
- 8.5 billion entries in matrix (users-movie)
- Mean Square error as accuracy (MSE)
- Possible multiple entries for each rating (date for ratings)
- Descomoposición matricial de peliculas y usuarios en 17,000 x 40 y 500,000 x 40


### *Challenges*:
- Mayoritariamente entradas nulas (8.4B/8.5B)
- SVD de matrices tan grandes es muy complejo
- Movies with a single entry for average
- Users with little feedback
- Overfitting


### Aspecto interesantes
- Clasificación de gustos de usuario junto con tendencia de rating de usuario hacia ciertos géneros
- User's rating of movie is composed of a sum of prefenreces about the various aspects of that movie (SVD: singular value descomposition)
- Resta de puntos de rating (numeros negativos en vez de ponderar menos o 0)
- Utilización de SVD para minimizar el MSE
- Derivative of the approximation error (reduces compute time) and ignore unknown error
- 100M in 7 seconds (1 pass)
- Penalization of magnitude of features (cut down overfitting)
- That is, each feature is limited to only swaying the rating within the valid range, and any excess beyondthat is lost rather than carried over. So, if the first feature suggests +10 on a scale of 1-5, and the second featuresuggests -1, then instead of getting a 5 for the final clipped score, it gets a 4 because the score was clipped aftereach stage


### Críticas
- More pragmatically, since the target range has a known limit,clipping is guaranteed to improve our performance, and having trained a stage with clipping on we should use it with clipping on. However, I did not really play with this extensively enough to determine there wasn't a better strategy
- Intento de eliminar linearidad hace que vuelvan a aspectos lineales
- Plotting theprogress over time, the probe rmse eventually turns upward and starts getting worse
- Número arbitrario de categorias