# Carousel Personalization in Music Streaming Apps with Contextual Bandits

Los sistemas recomendadores están presentes en múltiples aspectos de nuestra vida; hoy por hoy tendemos a verlos más en nuestros dispositivos móviles, lo cual tiene el efecto de tener un espacio reducido en cuanto a cuánto se puede ver, por lo que se usa el sistema de *carousel*. Dentro de este marco, el *paper* plantea una forma y método de poder hacer mejores recomendaciones en este formato junto con la optimización de los *display-to-stream rates*.

Algo interesante que se plantea en el paper es el hecho de que se asuma que los usuarios de un mismo grupo tengan gustos **idénticos**. Sería interesante ver la forma en que esta hipótesis *holds-up* de manera cuantitativa. De cualquier modo, este "recorte de esquina" permite que se agilicen mucho los cálculos, lo que a su vez hace que se puedan hacer recomednaciones en tiempo *semi* real.

Por otro lado, otro aspecto interesannte que se plantea en el paper es que se omite el feedback negativo en caso de que se haya recomendado un item y este no haya sido visto dado que no se paso por el *carousel* de ese item. Esto es interesante debido a que se esta haciendo uso de información de manera contextual implícita y no tiene un efecto negativo en los items, dándoles otra "oportunidad". Adicionalmente, esto permite que los items que fueron recomendados y nno vistos puedan ser "cacheados" (guardados en memoria caché) y reutilizados, simplificando una segunnda recomendación.

Finalmente, una crítica del paper es que que no se explica el porqué del uso de 100 clusters en vez de otro número. Es, aparentnemente, un número arbitrario de *clusters*. 

---
## Notas del texto (guía de esquema de ideas)
**Por hacer:**
- Un mini resumen del tema del *paper*, como contexto
- Comentario de aspectos interesantes
- Crítica a lo que consideren que no fue adecuado

### Ideas centrales
- Carousel recomendation with delayed batch feedback
- optimizing *display-to-stream* rates,

### *Challenges*:
- Requires dealing with user feedback to adaptively improve the recommended content viaonline learningstrategies

### Aspecto interesantes
- Considering that media services providers have access to contextual information on user preferences, that they mightnot know which cards from a carousel are actually seen by users
- the L  selected arms for each user, are updated at regular intervals or rounds, whose frequency depends on the technical constraints of the platform
- Asume that users from a same group have identical expected display-to-stream probabilities
- ignoring this important aspect, and thus returning a reward of 0 for all unclickedcards at each round whatever their rank in the carousel, would lead to underestimating display-to-stream probabilities.
- In our experiments, to be consistent with real-world constraints, rewards arenot processed on the fly but by batch, at the end of each round

### Críticas
- The forecaster needs to try all arms over time to identify the best ones
- Se usa 100 clusters (no se explica el porqué)