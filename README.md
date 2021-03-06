# Título del proyecto
EQCalculator.

# Integrantes
| Nombre| Github nickname|
|----|----|
| Daniel Felipe Montenegro  | DafMontenegro |
| Juan Antonio Garcia Cortes  | juagarciaco |
| Mateo Quintero Salgado  | msalgadoq  |

# Introducción

## Problemática

>"Un requisito importante para el diseño y optimización de unidades de operación o plantas industriales en el área química, farmacéutica, petroquímica, ambiental, de alimentos y producción de energía es el conocimiento adecuado de las propiedades termofísicas de los componentes puros y sus mezclas"

A lo largo de los años se han consolidado importantes bases de datos con propiedades termofísicas de fluidos puros, sin embargo, cuando se trata de mezclas binarias o de más componentes, las propiedades dependen (y muy rara vez de forma lineal) de su composición, y además, sufren alteraciones debido a interacciones intermoleculares (corto medio y largo rango) y distintos efectos a nivel atómico/molecular, por lo que es imposible obtener bases de datos "completas" para propiedades de mezclas.  

La infinidad de mezclas posibles entre distintos fluidos a distintas composiciones y condiciones ambientales hicieron necesario el desarrollo de modelos termodinámicos capaces de estimar y/o predecir el comportamiento y propiedades de estas mezclas, por lo que se han desarrollado varios modelos, que van desde simples (Margules, Van Laar) hasta los más complejos (UNIQUAC, UNIFAC). Cada modelo tiene sus propias restricciones y según investigación experimental se ajusta mejor a "cierto tipo de mezclas", según la naturaleza de sus componentes. Los cálculos que requieren incluso de los modelos más simples son dispendiosos de realizar a lápiz y papel, por lo que se busca una solución a través de un software que permita una evaluación rápida y usar diferentes modelos para poder comparar resultados. 

## Marco teórico

Teoría del equilibro termodinámico de fases. Disponible en:

1. García, I. Introducción al equilibrio termodinámico y de fases. Universidad Nacional de Colombia. Bogotá, 1995.
1. Smith, J.M., Van Ness, H .C. y Abbot, M.M. Introducción a la termodinámica en Ingeniería Química. Capítulos 6, 10. 7ª edición, Mc Graw-Hill Interamericana editores S. A, de C.V., México, 2007. 

Ejemplo de ecuaciones matemáticas para obtener coeficientes de actividad empleando diferentes modelos:

![Modelos empíricos](https://image.slidesharecdn.com/02-equilibriodefasesv1-160613170039/95/equilibrio-de-fases-27-638.jpg?cb=1465837281) 

## Antecedentes

Aplicaciones que calculen propiedades termodinámicas usualmente se incluyen en los simuladores de Ingeniería Química. El ejemplo más reconocido, está en el paquete [Properties](http://home.aspentech.com/products/pages/aspen-properties) del simulador ASPEN.

Aún no se conocen aplicaciones similares que utilicen licencias de software libre.

# Objetivos

## General

Teniendo en cuenta la problemática, se desea crear una **aplicación** que calcule de de forma rápida diferentes **propiedades termodfísicas** (composiciones globales y/o en fases, presiones parciales, fugacidades, coeficientes de actividad, entre otras) para diferentes **mezclas de fluidos en equilibrio termodinámico** (Líquido-líquido <**L-L**> y líquido vapor <**L-V**>), a través de los distintos modelos termodinámicos desarrollados. La aplicación recomendará opcionalmente, el modelo más apropiado para cada mezcla evaluada. (A medida que avance del proyecto, se definirá el alcance de la aplicación, es decir, con qué sustancias funcionará, y la cantidad máxima de componentes de la mezcla).

## Específicos

- Diseñar una interfaz interactiva para escoger el tipo de mezcla, sus componentes y los datos de entrada para calcular las propiedades de equilibrio.
- Importar bases de datos de propiedades termofísicas de los fluidos puros con los que la aplicación calculará equilibrio de fases.
- Definir las ecuaciones, iteraciones y rutinas de cálculo de cada modelo termodinámico utilizado en cada clase correspondiente.
- Diseñar una interfaz que despliegue comparativamente los resultados de propiedades (objetos) calculadas por los diferentes modelos (clases)
- Implementar (opcionalmente) una herramienta de análisis de datos para interpretar la comparación de resultados y sugerir el modelo más adecuado de acuerdo a la teoría asociada a cada modelo.

# Requisitos

Se trabajará la aplicación con el lenguaje de Processing, y las librerías a utilizar (preliminarmente) son:

- PDF export
- Serial
- Network
- Xls Reader
- Websockets
