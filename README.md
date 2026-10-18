# Repositorio de apuntes en LaTeX

Cada carpeta es un proyecto independiente, con su propia clase `.cls`:

| Carpeta | Proyecto |
|---|---|
| `apunte-edo/` | Apunte de Ecuaciones Diferenciales |
| `apuntes-algebra-lineal/` | Apuntes de Algebra Lineal |
| `kuadernos-mate-1/` | Kuadernos Mate 1 |

## Como funciona la compilacion
- En cada carpeta, todo archivo `.tex` que contiene `\documentclass` se compila y genera un PDF.
- Cada push compila solo las carpetas que cambiaron. "Run workflow" (manual) compila todo.
- Los PDF quedan en Actions > ejecucion > Artifacts, uno por proyecto (`<carpeta>-<archivo>`).

## Agregar un proyecto nuevo
Crear una carpeta en la raiz (sin espacios en el nombre) y subir ahi sus archivos. No hay que tocar el workflow.
