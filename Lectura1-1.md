# Item-Based Collaborative Filtering Recommendation Algorithms

El *paper* busca principalmente poder atacar dos áreas fundamentales de la recomendación de ítems en tiendas online que existe actualmente. Por un lado se busca mejorar *sparcity* (cantidad de ítems) y la escalabilidad en las tiendas de *E-Commerce*, ya que son una herramienta crucial para poder entregar buenas sugerencias y poder mejorar las ventas de la tienda. Esto se busca debido a que hoy en día está en auge el comercio online y hay un *stress* cada vez mayor por parte de los vendedores para poder entregar recomendaciones buenas sin tener que computar todos los datos mientras que al mismo tiempo sea escalable.

Es interesante notar que el *paper* habla de computar **todas** las relaciones ítem-ítem y no de un *subset* de estas acorde a lo que se necesita. En principio es algo muy lógico, pero es importante notar que esto es poco probable que escale bien (se puede ver al dentro de los gráficos del *paper* cómo entre más ítems, más tarda el cómputo, ya que es *O(n^2)*). Esto es importante de notar ya que un algoritmo de este tipo puede ser bueno inicialmente (sub 1000 ítems, por ejemplo), pero para *E-Commerce* masivo, es poco probable que resulte bien. Esto último es especialmente cierto para sitios como *EBay*, en los cuales los ítems van cambiando de manera muy dinámica, por lo que habría que estar recalculando la similitud cada vez que un ítem salga del mercado o se agregue a este, lo cual es **extremadamente seguido**.

Por otro lado, me llama bastante la atención que el *MAE* sea menor en CF *item-based* que en un *user-based*. Esto es interesante debido a que un pensamiento *naive* indicaría que entre más datos se tengan de una persona mejor se podrá hacer la recomendación, sin importar la similitud de los ítems. Esto indicaría que otro camino posible que se podría tomar es a la utilización de un híbrido en que se puedan utilizar la información más relevante de un usuario mediante una ponderación como la que se presentaba dentro del *paper* en conjunto con el *precomputation* de los ítems, lo cual podría mejorar el *MAE* a costa de un pequeño costo de operación dinámico.

---
## Notas del texto (guía de esquema de ideas)
Por hacer:
- Un mini resumen del tema del paper, como contexto
- Comentario de aspectos interesantes
- Crítica a lo que consideren que no fue adecuado

### Challenges:
- high quality recomendations
- performing many recomedations per second x 1M users
- high coverage in data sparcity
- need to be scalable for large scale problems


explores item base collaborative filtering (user item matrix)
- item-item similarities

### Collaborative filtering

- Builds database of preferences for items by users
- CF-based recomendaciones en base a la opinión de otros usuarios similares


New user is compared to DB to find nieghbours (similar historical taste)

Performance issues when too much is known from the user
problem with non consistent recomendations (no that accurate)

problema conjunto -> se debe mejorar rendimiento y escalabilidad (no solo una arista del problema)

en vez de filtering a través de user, se hará a través de similitud de items (más estático)

Horting -> usa info de otros usuarios para recoemdar


### User-Based (memory-based) CF challenges:
- Need too much computation (uses entire DB)
- Sparcity (demasiados items)
- Scalability

Incorporación de filtros semi inteligentes no funcinó entre personas que pensaban similar


### Aspecto interesantes
- precompute **all** item-item similarities and save a table for lookup (masive amounts of data in precomputation and hash tables) -> mejora al usar función de hash o similar
- proveen mejor MAE y mejor performance
- alta precisión con baja cantidad de datos


### Crítica
- Precomputing only works well in mostly static number of items, for example in ebay you would have to recalculate contuously, which would be very expensive
