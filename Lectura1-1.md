# Item-Based Collaborative Filtering Recommendation Algorithms


- Un mini resumen del tema del paper, como contexto
- Comentario de aspectos interesantes
- Crítica a lo que consideren que no fue adecuado

El paper busca principalmente poder atacar dos áreas fundamentales de la recomendación de ítems en tiendas online que existe actualmente. Por un lado se busca mejorar *sparcity* (cantidad de ítems) y la escalabilidad en las tiendas de *E-Commerce*, ya que son una herramienta crucial para poder entregar buenas sugerencias y poder mejorar las ventas de la tienda. Esto se busca debido a que hoy en día está en auge el comercio online y hay un *stress* cada vez mayor por parte de los vendedores para poder entregar recomendaciones buenas sin tener que computar todos los datos mientras que al mimso tiempo sea escalable.


challenges:
- high quality recomendations
- performing many recomedations per second x 1M users
- high coverage in data sparcity
- need to be scalable for large scale problems


explores item base collaborative filtering (user item matrix)
- item-item similarities

## Collaborative filtering

- Builds database of preferences for items by users
- CF-based recomendaciones en base a la opinión de otros usuarios similares


New user is compared to DB to find nieghbours (similar historical taste)

preformance issues when too much is known from the user
problem with non consistent recomendations (no that accurate)

problema conjunto -> se debe mejorar rendimiento y escalabilidad (no solo una arista del problema)

en vez de filtering a través de user, se hará a través de similitud de items (más estático)

Horting -> usa info de otros usuarios para recoemdar


## User-Based (memory-based) CF challenges:
- Need too much computation (uses entire DB)
- Sparcity (demasiados items)
- Scalability

Incorporación de filtros semi inteligentes no funcinó entre personas que pensaban similar


## Aspecto interesantes
- precompute **all** item-item similarities and save a table for lookup (masive amounts of data in precomputation and hash tables) -> mejora al usar función de hash o similar
- proveen mejor MAE y mejor performance
- alta precisión con baja cantidad de datos
- 


##crítica
- Precomputing only works well in mostly static number of items, for example in ebay you would have to recalculate contuously, which would be very expensive
