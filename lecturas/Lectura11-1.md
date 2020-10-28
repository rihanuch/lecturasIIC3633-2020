# Deep Learning based Recommender System: A Survey and New Perspectives

Actualmente los sistemas recomendadores son fundamentales para poder mejorar el funcionamiento de tiendas onlines y tener mejor interacción con los usuarios, pero no se ha tenido avances significativos con los nuevos métodos de DP. Dentro de este contexto, el *paper* habla de los beneficios que la aplicación de métodos de recomendación basados en DL pueden tener al momento de recomendar, tanto en resultados como en costo de cómputo.

Un aspecto interesante del paper es la idea de aplicar CNN para entender la semántica y contenido de los *tweets* o similares. Es interesante plantear esto debido a que hoy en día ya existen modelos de análisis de sentimientos en base a contenido textual o auditivo, como lo osn los filtros de correo de Google o detectores de búsquedas en Instagram. En este sentido sería bueno que ses transparentara más y se hicieran más "públicos" estos métodos de análisis, sobre los cuales después se podría hacer recomendaciones semánticas.

Por tro lado, un aspecto que considero que es criticable es que no se mencionen los límites éticos de cosas, como por ejemplo los *Cross domain recommender systems*
> Cross domain recommender system, which assists target domain recommendation with the knowledge learned from source domains, providesa desirable solution for these problems. One of the most widely studied topics in cross domain recommendationis transfer learning which aims to improve learning tasks in one domain by using knowledge transferred fromother domains 

En este sentido, considero que se debería mencionar la privacidad de los usuarios y los sentimientos que estos pueden tener al sentir (o saber) que están siendo *trackeados* en sitios, aparentemente, no relacionados. Bajo esta misma premisa, a pesar de que el propósito sea dar recomendaciones más precisas y mejores para los usuarios, creo que se deberían establecer los límites de privacidad y hacer un llamado a respetarlos.

Adicionalmente, un challenge interesannte es el hecho de que gran parte de las RNN están tiene problemas para lidiar con dependencias distantes o con secuencias en términos de rendimiento computacional. Esto es una limitación temporal que podría eventualmente ser solucionada mediante *hardware*, pero a raíz de los *papers* que se mencionan también se puede entender que se han tenido otross *approaches* con más exito que logran solucionar estos problemas.

Finalmente, es sumamente importante, tal como se dice en el *paper* el estandarizar el reporte de resultados de un modelo ya que
> this creates an inconsistent reporting of scores, with each author reporting their own assortment ofresults. Till this day, there is seemingly on consensus on a general ranking of models.

En este sentido, es importante poder tener una claridad y facilidad de comparación para así no tener que creer de manera "ciega" a los resultados presentados y tampoco tener que probar, experimentalmente, si lo planteado es real en otro *dataset* o con otras métricas.

---
## Notas del texto (guía de esquema de ideas)
**Por hacer:**
- Un mini resumen del tema del *paper*, como contexto
- Comentario de aspectos interesantes
- Crítica a lo que consideren que no fue adecuado

### Ideas centrales
- 

### *Challenges*:
- Integrating attention mechanism into RNNs enables the RNNs to process long and noisy inputs [23]. Although LSTM can solve thelong memory problem theoretically, it is still problematic when dealing with long-range dependencies

### Aspecto interesantes
- RNNs are extremely suitable for sequential data processing. As such, it becomes a natural choice for dealing withthe temporal dynamics of interactions and sequential paerns of user behaviours
- Hidasi etal. [57] introduced a parallel architecture for session-based recommendation which utilizes three GRUs to learnrepresentations from identity one-hot vectors, image feature vectors and text feature vectors.
-  It applies CNN sto learn signicant local semantics from tweetsand maps them to a distributional vectors. ese distributional vectors are further processed by LSTM to computethe relevance of target quotes to the given tweet dialogues
-  Moreover, there are few works investigating users’ footprints (e.g. Tweets or Facebook posts) from socialmedia [61] and physical world (e.g. Internet of things) [186]. One can infer user’s temporal interests or intentionsfrom these side data resources while deep learning method is a desirable and powerful tool for integrating theseadditional information.
-  Firstly, this creates an inconsistent reporting of scores, with each author reporting their own assortment ofresults. Till this day, there is seemingly on consensus on a general ranking of models (Notably, we acknowledgethat theno free lunch theoremexists). Occasionally, we nd that results can be conicting and relative positionschange very frequently.

### Críticas
- Cross domain recommender system, which assists target domain recommendation with the knowledge learned from source domains, providesa desirable solution for these problems. One of the most widely studied topics in cross domain recommendationis transfer learning which aims to improve learning tasks in one domain by using knowledge transferred fromother domains 
