# Collaborative Filtering for Implicit Feedback Datasets

*Análisis acá*

---
## Notas del texto (guía de esquema de ideas)
**Por hacer:**
- Un mini resumen del tema del *paper*, como contexto
- Comentario de aspectos interesantes
- Crítica a lo que consideren que no fue adecuado

### Ideas centrales
- we do not have anydirect input from the users regarding their preference
- No explicit profile needed
- Predict r_{u,i}, the unobserved value by user y for item i
- This reduces our latent factor model into a linear modelthat predicts preferences as a linear function of past actions
- We provide a latent factor algorithm that directly ad-dresses the preference-confidence paradigm


### *Challenges*:
- Cold start problem
- hard to reliablyinfer which items a user did not like.
- implicit feedback is very noisy
- it becomes much easier to predict popular programs, whileit is increasingly difficult to predict watching a non popular show

### Aspecto interesantes
- No negative feedback
- numerical value of implicit feeback is confidence, not preference
- No sparse matrix as 0 indicates not viewing TV
- Importantly,running time is linear in the size of the input

### Críticas
- However, our beliefs are associated withgreatly varying confidence levels.
- Based on beliefs
- Training period of 4 weeks on TV only applies to TV schedules. For example a TV series can be on netflix for much more than that
- The television might simply have beenleft on while the viewer does something else (generalizes preferences and removes binge time)
- In addition, we are cur-rently unable to track user reactions to our recommenda-tions.  (difficult to accurately measure efficiency)
- 