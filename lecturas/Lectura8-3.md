# See What You Want to See: Visual User-Driven Approachfor Hybrid Recommendation

Múltiples estudios han indicado que la precisión de un sistema recomendador no necesariamente se correlaciona con la mejor experiencia de usuario, por lo que ha surgido el área de estudio de *HCI*. Dentro de este contexto, el *paper* propone una interfaz en la que el usuario puede tener un mayor control de las recomendaciones que se le hacen mediante inspección de estas y manipulación de parámetros.

Un aspecto interesante de lo presentado es el hecho de que *SetFusion* se basa, en parte, en que

> The user who **understands** the nature of the fused sources might be in a better position to choose the proper way to fuse them

Es decir, está enfocado en los usuarios en que tienen, basalmente, unaa idea de cómo funciona un sistema recomendador. Esto implica que la implementación más masiva no es tan directa, ya que no todos los usuarios poseen los mismos conocimientos técnicos.

Otro aspecto interesante que se plantea son las métricas que se presentan. Estas son muy prometedoras, ya que en UMAP 2013 se duplicó el número de usuarios y el número de *bookmarks* se cuadruplicó, lo que muestra que *SetFusion* tiene un gran potencial. 

A pesar de lo anterior, hay que ser precabido con estas afirmaciones. Si bien son ciertas, estása son hechas en base a un `N` muy pequeño, como por ejemplo

> On average, users updated the list of recommendation after manipulating the sliders 4.36 times (over 11 users), which is clearly greater than the 2.25 times average usage of the CSCW 2013 SetFusion (over 8 users).

En este sentido, los resultados no son tan extendibles a aplicaciones más generales de manera directa porque (A) se *testeo* con un universo de usuarios pequeño y (B) los usuarios tenían un conocimiento técnico que les facilitaba el uso de *SetFusion*.

---
## Notas del texto (guía de esquema de ideas)
**Por hacer:**
- Un mini resumen del tema del *paper*, como contexto
- Comentario de aspectos interesantes
- Crítica a lo que consideren que no fue adecuado

### Ideas centrales
- Accuracy does not always correlate with a better user experience
- Manually fuse and control the importance of recommender strategies and to inspect the fusion results

### *Challenges*:
- Keep initial reasonable level of control in pilot study

### Aspecto interesantes
- The user who **understands** the nature of the fused sources might be in a bet-ter position to choose the proper way to fuse them
- CF methods are more approriate for recommending novel papers, while CBfiltering might be more accurate when recommending famil-iar related work.
- The UMAP 2013 interface was highly more productive. While the number of users more than dou-bled, the number of bookmarks made with the visual interfaceincreased almost 4 times

### Críticas
- Métricas son limitadas (hay que tener precaución) por el universo pequeño de usuarios
