# Título del proyecto
EQCalculator(??)

# Integrantes
| Nombre| Github nickname|
|----|----|
| Daniel Felipe Montenegro Herrera  | DafMontenegro |
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

Ecuaciones matemáticas de los modelos:
![Modelos empíricos](C:\Users\Acer\Documents\2017-2\POO)

## Antecedentes

Aplicaciones que calculen propiedades termodinámicas usualmente se incluyen en los simuladores de Ingeniería Química. El ejemplo más reconocido, sería la sección de ASPEN Properties de

# Objetivos

## General

Teniendo en cuenta la problemática, se desea crear una **aplicación** que calcule de de forma rápida diferentes **propiedades termodfísicas** (composiciones globales y/o en fases, presiones parciales, fugacidades, coeficientes de actividad, entre otras) para diferentes **mezclas de fluidos en equilibrio termodinámico** (Líquido-líquido <**L-L**> y líquido vapor <**L-V**>), a través de los distintos modelos termodinámicos desarrollados. La aplicación recomendará opcionalmente, el modelo más apropiado para cada mezcla evaluada. (A medida que avance del proyecto, se definirá el alcance de la aplicación, es decir, con qué sustancias funcionará, y la cantidad máxima de componentes de la mezcla).

## Específicos

<Desglose el objetivo general en específicos>

# Requisitos

<Indique el lenguaje y los requerimientos esperados de la aplicación. Liste las [librerías de Processing](https://processing.org/reference/libraries/) que se emplearían para su desarrollo.>
