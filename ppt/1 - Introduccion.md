---
marp: true
theme: gaia
color: #000
backgroundColor: #fff
paginate: true
---

<!--_paginate: false -->
<!--_class: lead -->

![bg left](img/repro_crisis.png)

# 1. La crisis de reproducibilidad

---

# ¿Qué es la crisis de reproducibilidad?

De una encuesta a 1576 investigadores en Nature (2016):

> More than 70% of researchers have tried and failed to reproduce another scientist's experiments, and more than half have failed to reproduce their own experiments.

Baker, M., Penny, D. (2016). Is there a reproducibility crisis? *Nature*, 533, 452-454.

---

# Business as usual

**Lo tradicional:** Solo el artículo y los resultados que los autores eligen se publican.

![bg right 100%](img/macarthur_paper.png)

---

# Business as usual

No datos brutos y métodos poco detallados = irreproducible

![bg right 110%](img/macarthur_plot.png)

---

# Efectos no solo académicos

Errores que se propagan a la política económica mundial (5000 citas en Google Scholar).

![bg right 140%](img/debtgrowth_paper.png)

---

# Efectos no solo académicos

Un error en una hoja de Excel con tremendas consecuencias.

Si se hubiera seguido una metodología reproducible, probablemente se habría evitado.

![bg right 120%](img/critique_debt.png)

---

# Muchos más ejemplos

Excel corrigiendo nombres de genes en miles de artículos

![bg right 100%](img/genes_excel.png)

---

# Muchos más ejemplos

Fabricación de datos detectada gracias al requisito de publicar los datos brutos

![bg right 100%](img/pruitt_data.png)

---

<!--_paginate: false -->
<!--_class: lead -->

# 2. Ciencia reproducible

---

## 2.1 Qué es la ciencia reproducible

**Reproducible (reproducibility, computational reproducibility):**

"Un estudio es reproducible si el texto del artículo viene acompañado de código... ...que permite recrear exactamente a partir de los datos originales todos los resultados y figuras incluidos en el artículo."

---

**vs Repetible (replicability):**

"...replicar el mismo estudio (con nuevos datos) a partir de la información proporcionada en el artículo."

Rodríguez-Sánchez, F., Pérez-Luque, A.J. Bartomeus, I., Varela, S. 2016. Ciencia reproducible: qué, por qué, cómo. Ecosistemas 25(2): 83-92. Doi.: 10.7818/ECOS.2016.25-2.11

---

## 2.2 Por qué es necesaria

1. Garantía de transparencia y calidad. Menos errores y estos son detectables y corregibles.

2. Poder reutilizar código ayuda a acelerar el progreso científico.

3. Datos y código requeridos por revistas y entidades financiadoras.

4. Beneficios personales: ahorro de tiempo y esfuerzo, facilita la colaboración, signo de calidad, más probabilidad de citas, etc.

---

## 2.3 Cómo implementarla?

Necesitamos cambiar la manera en que trabajamos por un **flujo de trabajo reproducible**.

![bg right 140%](img/curva.png)

---

# 3. El flujo de trabajo reproducible

---

## 3.1. Buenas prácticas con datos y código

---

### El principio: los datos

**Planificar:** Cómo se van a obtener, recoger, almacenar y compartir los datos.

**Recolectar:** Intentar conservar **siempre** los datos brutos en el formato original.

**Metadatos:** Descripción detallada de lo que representa cada variable, cómo se tomó, en qué unidades está, las personas encargadas, etc.

---

**Control de calidad:** Plantillas o formularios ayudan a evitar errores al introducir los datos. Ser consistente en los códigos y la estructura.

**Preservación:** Asegurar que nuestros datos seguirán disponibles a largo plazo. Archivo de formato público (txt o csv por ejemplo) en un repostorio con DOI (DRYAD, Zenodo o figshare por ejemplo).Estos datos muchas veces se pueden vincular con el artículo donde se han estudiado estos datos.

---

## Control de versión

![bg right 85%](img/phd_controlversion.gif)

---
## Control de versión: Local

![bg center 80%](img/git_logo.png)

---

![bg center 95%](img/snapshots.png)

---

## Control de versión: En la nube

![bg center 80%](img/github_2.png)

---

![bg center](img/github_repo.png)

---

## Análisis en código

![bg center 40%](img/r_logo.png)

---

![bg center](img/rstudio.png)

---

## Manuscritos reproducibles

![bg center 50%](img/markdown_logo.png)

---

![bg center 70%](img/ex_markdown.png)