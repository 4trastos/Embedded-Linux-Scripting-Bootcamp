# Embedded-Linux-Scripting-Bootcamp
---

````markdown
# 🧠 Embedded Linux Scripting Bootcamp

Bienvenido al **Embedded Linux Scripting Bootcamp**, un sistema de aprendizaje progresivo para dominar el scripting en Linux orientado a sistemas embebidos.

## 🚀 ¿Qué es esto?

Este proyecto contiene **100 ejercicios cuidadosamente diseñados** para ayudarte a aprender y dominar `shell scripting` con `sh` en un entorno Linux embebido.

La estructura está organizada en **10 bloques de 10 ejercicios**, que cubren desde lo más básico hasta técnicas más avanzadas de scripting.

> 🎯 Cada bloque está diseñado como una pequeña "misión", que debes completar paso a paso.  
> ✅ Solo puedes avanzar al siguiente bloque si completas correctamente el anterior.

---

## 📦 Estructura del Proyecto

```bash
embedded-linux-scripts/
├── menu.sh                     # Menú principal
└── bloques/
    ├── bloque01/
    │   ├── enunciados/         # Enunciados de los ejercicios
    │   ├── tests/              # Scripts de test automático
    │   ├── soluciones/         # Tus soluciones (se generan al ejecutar)
    │   └── run_bloque.sh       # Lógica interactiva del bloque
    ├── bloque02/
    ├── ...
    └── bloque10/
````

---

## 🧩 ¿Qué aprenderás?

Cada bloque cubre un conjunto progresivo de habilidades:

| Bloque | Temática                                               |
| ------ | ------------------------------------------------------ |
| 01     | Fundamentos: `echo`, comentarios, permisos, estructura |
| 02     | Variables, tipos, operaciones básicas                  |
| 03     | Condicionales (`if`, `else`, `test`)                   |
| 04     | Argumentos y códigos de retorno                        |
| 05     | Bucles (`for`, `while`, `until`)                       |
| 06     | Manipulación de texto (cut, grep, awk)                 |
| 07     | Gestión de ficheros y directorios                      |
| 08     | Funciones, modularización, reutilización               |
| 09     | Señales, procesos, job control                         |
| 10     | Integración y mini-proyectos                           |

---

## 🛠 Requisitos

* ✅ Linux o WSL
* ✅ Tener instalado: `bash`, `sh`, `coreutils`
* ✅ Tener instalado **Vim** (imprescindible para editar los ejercicios):

```bash
sudo apt install vim
```

---

## ▶️ Cómo usarlo

1. **Clona el repositorio**:

```bash
git clone https://github.com/tuusuario/embedded-linux-scripts.git
cd embedded-linux-scripts
```

2. **Haz ejecutable el menú y ejecútalo**:

```bash
chmod +x menu.sh
./menu.sh
```

3. **Explora los bloques**
   El sistema detectará qué bloques tienes desbloqueados y te permitirá continuar paso a paso.

4. **Cada ejercicio**:

   * Te mostrará el enunciado
   * Al pulsar ENTER, se abrirá en `vim` para que escribas tu solución
   * Al guardar y salir, el sistema la corrige automáticamente
   * Si apruebas, pasas al siguiente

---

## 📈 Progreso y Desbloqueo

* Cada bloque finalizado te da un **código de desbloqueo automático**
* Los progresos se guardan automáticamente
* Puedes consultar tu progreso desde el menú principal

---

## 👥 Contribuciones

¿Quieres colaborar?

* Puedes aportar nuevos bloques o mejorar tests
* Puedes proponer nuevos ejercicios o bugs en [Issues](https://github.com/tuusuario/embedded-linux-scripts/issues)

---

## 📜 Licencia

Este proyecto está bajo la licencia MIT.
¡Úsalo, compártelo y mejora tu habilidad en scripting Linux!

---

**¡Feliz aprendizaje!**
📬 Si tienes dudas o sugerencias, no dudes en abrir una issue o contactarme.
