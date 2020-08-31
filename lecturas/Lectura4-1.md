# Content-based recommendation systems

*Análisis acá*

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
