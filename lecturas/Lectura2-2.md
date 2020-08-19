# BPR: Bayesian Personalized Ranking from Implicit Feedback

El *paper* propone un método de opitmiazión para rankings de feedback implícito en combinación con *machine learning*, debdio a que la gran parte de los métodos que se utilizan no están optimizados. En este sentido, la premisa que dan es que al optimizar los parámetros y el método para *rankear*.

Algo interesante del *paper* es el uso de pares de items en vez de los items por si solos debido a que representan mejor el problema que solo llenar con *feedback* negativo. Esto sería interesante de aplciar en los otros algoritmos de CF y poder comparar el resultado y comportamiento de las recomendaciones en los resultados finales presentados, ya que se podría mejorar la recomendación con información más certera.

Por otro lado, otro aspecto interesante es el hecho de que no se hayan complicados ciclos completos para el análisis de los datos en el entrenamiento para que se pudieses converger más rápidamente. Es muy interesante pensar que se pueden lograr resultados mejores que lo que ya hay incluso sin permitir ciclos completos de los datos, lo que lleva a pensar que en un futuro se podría obtener resultados más precisos con mejor *hardware* y permitiendo que se hagan los ciclos completos.

Finalmente, es un tanto criticable que se hagan testeo y análisis del resultado solamente con 2 *datasets* que tienen conceptos similares por detrás (ambos son, en esencia, de compra). En este sentido, seria bueno poner a prueba el método presentado con *datasets* con otros contextos de *rankeo* y recomendación para ver su comportamiento.

---
## Notas del texto (guía de esquema de ideas)
**Por hacer:**
- Un mini resumen del tema del *paper*, como contexto
- Comentario de aspectos interesantes
- Crítica a lo que consideren que no fue adecuado

### Ideas centrales
- None of the current methods are currently optimized for ranking
- Create user specific ranking for set of items from user interactions

### *Challenges*:
- Evade *overffiting*
- reasonalble execution time

### Aspecto interesantes
- offline learning of the model
- Implicit feedback systems give only positive observations
- Use pairse inted of single items as it represents better the problem
- Abandoning the idea of full cycles through the data is es-pecially useful in our case as the number of examplesis very large and for convergence often a fraction of afull cycle is sufficient

### Críticas
- Only uses 2 datasets (similar user intentions (buying))