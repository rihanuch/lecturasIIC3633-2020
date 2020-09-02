# Content-based recommendation systems

Los sistemas recomendadore hoy en día son extremadamente útiles para poder entregar un valor adicional a los usuarios y aún más si se tiene infromación de las personas de manera en que se pueda recomendar mejor. El concepto general es que una recomendación puede ser por información explícita o immplícita, pero también se debería consiredar el contenido de lo que se está recomendando para poder hacer un mejor pareo de información. Dado lo anterior, esto puede ser complicado cuando el contenido es muy largo como lo son los párrafos con texto.

Un aspecto interesante es la utilización de la cantidad de conceptos repetidos para señalar la importancia de este como idea central del texto. Esto a priori puede ser buena idea, pero hay que hila fino debido a que una repetición puede no ser necesariamente central, por ejemplo cuando se quiere señalar algo "malo". Dentro de esta misma idea, esto mismo es un desafíó para poder clasificar bien, ya que no solamente se puede hacer por palabras, sino que se tiene que hacer por concepto.

Otra idea interesante que se presenta en el *paper* es la reutilización de modelos antiguos para modelos de machine learning. Esto es interesante en el sentido en que en caso de que las recomendaciones que se hagan no sean sofisticadas por lo que se podría estar indirectamente entrenando a un modelo que no recomienda bien. Dicho lo anterior, el hecho de que las palabras puedan ser "descompuestas" con *RIPPER*, puede presentar la ventaja de un mayor nivel de abstratcción de lo que una persona puede lograr, encontrando relaciones relevantes que no son obvias a primera vista.

Llama mucho la atención que las fórmulas presentadas no aseguren convergencia de tiempo ya que en teoría los métodos presentados deberían presentar mejoras seguras o generales, pero no lo hacen ni tampoco mejoras en rendimiento. En este sentido es criticable que se presente como una mejora que no asegura lo que pretende realmente. A pesar de lo anterior, el hecho de que este tipo de algoritmos pueda ser realizado en tiempo real ayuda mucho para aplicaciones reales si se toma en consideración que la mayor parte de las veces si puede converger el resultado y en general puede presentar un mejor rendimiento.


---
## Notas del texto (guía de esquema de ideas)
**Por hacer:**
- Un mini resumen del tema del *paper*, como contexto
- Comentario de aspectos interesantes
- Crítica a lo que consideren que no fue adecuado

### Ideas centrales
- Recommend an item to a user based upon a description of the item and a profile of the  user’s interests

### *Challenges*:
- Unrestricted text and unstructured data
- Customiza-tion systems do not provide a way to determine the order in which to present items and can find either too few or too many matching items to display

### Aspecto interesantes
- The value of a variable associated with a term is a real number that represents the importance or relevance (The intuition behind the weight is that the terms with the highest weight occur more often in that document than in the other documents, and therefore are more central to  the  topic  of  the  document)
- Another  important  use  of  the  history  in  content-based recommendation systems is to serve as training data for a machine learning algorithm that creates a user model
- When they operate on free text, the free text is first converted to structured data by selecting a small subset of the terms as attributes. In contrast, other algorithms are designed to work in high dimensional spaces and do not require a preprocessing step of feature selection.
- RIPPER: the individual words of a text document can be repre-sented  as  multiple  feature  values  for  a  single  feature
- An important advantage of the above learning schemes for linear algorithms is that they can be performed on-line, i.e., the current weight vector can be modified incrementally as new instances become available. This is a crucial advantage for applica-tions that operate under real-time constraints.


### Críticas
- The underlying intuition of the above formula is to incrementally move the query vector towards clusters of relevant documents and away from irrelevant docu-ments...here  is  no  theoretically  motivated  basis for  the  above  formula,  i.e.,  neither  per-formance  nor  convergence  can  be  guarantee
