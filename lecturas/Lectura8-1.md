# A User-Centric Evaluation Framework of Recommender Systems

Debido a que los sistemas recomendadores hoy en día tienen cada vez más importancia para los *e-commerce* y para los usuarios mismos, es importatne poder hacer una métrica de evaluación de estos modelos. En este sentido, el *paper* plantea un modelo para evaluar cuán bueno es un modelo, más allá de qué tan bien predice, sino que qué tan bien funciona en la realidad cuando es puesto dentro de un sistema.

Una idea central que hay detrás del modelo planteado es poder mejorar la usabilidad de los modelos recomendadores, ya que permite que las áreas de marketing y desarrolladores puedan entender si los usuarios realmente están percibiendo beneficios del modelo. En este sentido es muy interesante notar que un sistema recomendador no necesariamente es mejor simplemente por ser más preciso, algo que uno inicialmente puede no haber pensado.

Otro aspecto interesante de lo presentado es que se plantea la noción de que una buena explicación por parte del sistema ayuda a que el usuario sienta más confianza hacia este y tenga mayores niveles de satisfacción. El problema de lo planteado anteriormente es que se require información contextual para poder hacer esta "mejor recomendación", algo que a priori puede no ser un conflicto. El problema surge en la línea que delimita transparencia del sistema con confianza, es decir, cuando el sistema le dice al usuario, por ejempo "te recomiendo X porque estás triste". En este sentido, es importante que el sistema tampoco sea 100% transparente.

Por otro lado, es interesante notar que un sistema puede predecir extremadamente bien, pero finalmente su usabilidad no va a depender solo del modelo, sino que también de cuándo y cómo se muestren las recomendaciones. En este sentido es un desafío poder aislar las diferentes partes del proceso, ya que son dependientes.

Una crítica que se le puede hacer al *paper* es el hecho de que termina "delegando" gran parte de la responsabilidad de la recomendación a la interfaz gráfica. Esto es, por ejemplo, la pregunta métrica "I am not interested in the items recommended to me" puede ser afectada fuertemente no por la recomendación en si misma, sino que, por ejemplo, la foto que se mostró de la recomendación hecha. En este sentido, el paper no delimita qué parte es "responsabilidad" del modelo y qué partes son "responsabilidad" de los desarrolladores, lo cual podría hacer que se puedan tener preguntas más precisas al momento de hacer la evaluación de la recomendación integrada.

---
## Notas del texto (guía de esquema de ideas)
**Por hacer:**
- Un mini resumen del tema del *paper*, como contexto
- Comentario de aspectos interesantes
- Crítica a lo que consideren que no fue adecuado

### Ideas centrales
- Creación de modelo para evaluar percepción de sistemas recomendadores (*ResQue*). Evalua usabilidad, utilidad, *interface*, calidad de interacciones (60 preguntas)
- Evaluating user’s  perception  of  a  recommender  system  can  help  developers and marketers understand more precisely if users actually experience and appreciate the intended benefits.

### *Challenges*:
- A good recommender system should be able to formulate recommendations considering different kinds of contextual factors that will likely take effect. 
- Measaurement of trust (long term) can also be influenced by external factors

### Aspecto interesantes
- In particular,  they  suggest  that  user satisfaction does not always correlate with high recommender accuracy
- The  main  results  are  that  transparent  system  logic, recommendation of familiar items, and sufficient supporting information to recommended items is crucial in influencing users
- The  macro-level  of  the  guidelines provided suggestions concerning when, where and how the recommended products should be displayed (esto implica uso de información contextual)
-  a good explanation interface could help inspire users’   trust   and   satisfaction   by   giving   them   information   to   personally  justify  recommendations,  increasing  user  involvement  and educating users on the internal logic of the system
-  evaluating   perceived   ease   of   use   may   be   more   appropriate  than  using  the  objective  task  completion  time  to  measure a system’s ease of use. 

### Críticas
- Gran parte del resultado de las métricas que se pueden obtener en base a la evaluación del modelo de recomendación con el modelo propuesto son *UI-dependent* (se les pide a las personas encontrar cosas en sitios *online*)
