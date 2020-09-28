# Inspectability and Control in Social Recommenders

Actualmente todas, o casi todas, las redes sociales tienen un grado muy bajo de control sobre las recomendaciones que entregan a los usuarios. Dentro de este contexto, el *paper* muestra que el permitir que los usuarios tengan más control sobre las recomendaciones que se hacen puede mejorar la percepción que tienen de las recomendaciones.

Un aspecto interesante que se plantea es que se permita darle un peso tanto a los items como a los amigos del usuario. En este sentido, el usuario está entregando al sistema un feedback para dar más o menos peso de manera explicita y confiando en los gustos del otro. Dicho lo anterior, es importante tener en mente que muchos de los sitemas recomendadores actualmente ya hacen eso de manera implícita, basándose, por ejemplo, en cuánto tiempo uno pasa en el perfil del otro, cuán seguido interactuán, etc.

Por otro lado, también es interesante pensar que un usuario pueda deicidir de manera más explícita quién tienen más influencia sobre las recomendaciones entregadas y que estas tengan explicaciones. Al mismo tiempo el hecho de que se puedan incluir este tipo de características personales, permite poder hacer un tipo de "*fine tuning*" de las recomendaciones *on the go*. Esto último quiere decir que un usuario podría cambiar el peso que se le da a un amigo de manera radical por la ocurrencia de un evento del cual una red social no se enteraría de inmediato (por ejemplo terminar una relación), lo que disminuiría la percepción negativa de las recomendaciones influenciadas por ese otro usuario.

Un aspecto muy criticable del paper es que no se toma en cuenta que el "efecto burbuja" se podría ver aún más acentuado con este control de parte de los usuarios. El efecto burbuja en las redes sociales básicamente es aquel en que uno ve solamente lo que le gusta. El problema con lo anterior es que tiende a producir polarización a ninvel social, lo cual puede derviar en connflictos inesperados y sesgos de confirmación si los usuarios usan las redes sociales como medios para informarse de información, aparentemente, objetiva.

Por otro lado, otra crítica del paper y su estudio es el grupo de estudio que se implementó, ya que no se especifica el nivel académico de los usuarios o grupo socioeconómico. Esto es importante de especificar ya que **podría ocurrir** que grupos con grados académicos más elevados podrían verse beneficiados por una interfaz más compleja y poder hacer este *fine tuning* de las recomendaciones, pero otros grupos podrían percibir una complejización innecesaria del sistema y tener efectos negativos en el uso de la plataforma.

---
## Notas del texto (guía de esquema de ideas)
**Por hacer:**
- Un mini resumen del tema del *paper*, como contexto
- Comentario de aspectos interesantes
- Crítica a lo que consideren que no fue adecuado

### Ideas centrales
- Querer tener más control sobre recomendaciones en redes sociales

### *Challenges*:
- Known recommen-dations are less useful, as they contain no novelty, which explains the  decrease  in  system  satisfaction

### Aspecto interesantes
- Users may want some control over  this  process,  because  they  may  not  like  each  item  equally well, or they may value a friend’s preferences beyond
- The explanation process has a positive effect on satisfaction with recommendations
- Weight friends and items
- The  framework  also  allows  us  to  include  the  effect  of personal characteristicson users’ experience.

### Críticas
- Bubble effect
- Only adult Facebook users living in the U.S. were allowed to participate
- Inspectable  and  controllable recommender  system  is  easier  to  understand.