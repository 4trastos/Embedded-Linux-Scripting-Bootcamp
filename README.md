
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
| 06     | Manipulación de texto (`cut`, `grep`, `awk`)           |
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

---

---

## 🌐 English Version

# 🧠 Embedded Linux Scripting Bootcamp

Welcome to the **Embedded Linux Scripting Bootcamp**, a progressive learning system to master Linux shell scripting focused on embedded systems.

## 🚀 What is this?

This project contains **100 carefully crafted exercises** to help you learn and master `sh` scripting in an embedded Linux environment.

The content is structured into **10 blocks with 10 exercises each**, progressing from beginner to advanced scripting topics.

> 🎯 Each block is designed like a small "mission" to complete step by step.
> ✅ You can only proceed to the next block after passing the current one.

---

## 📦 Project Structure

```bash
embedded-linux-scripts/
├── menu.sh                     # Main menu script
└── bloques/
    ├── bloque01/
    │   ├── enunciados/         # Exercise descriptions
    │   ├── tests/              # Automated test scripts
    │   ├── soluciones/         # Your solutions (generated as you work)
    │   └── run_bloque.sh       # Interactive logic of the block
    ├── bloque02/
    ├── ...
    └── bloque10/
```

---

## 🧩 What will you learn?

Each block covers a progressive set of skills:

| Block | Topic                                                   |
| ----- | ------------------------------------------------------- |
| 01    | Basics: `echo`, comments, permissions, script structure |
| 02    | Variables, types, basic operations                      |
| 03    | Conditionals (`if`, `else`, `test`)                     |
| 04    | Arguments and return codes                              |
| 05    | Loops (`for`, `while`, `until`)                         |
| 06    | Text manipulation (`cut`, `grep`, `awk`)                |
| 07    | File and directory management                           |
| 08    | Functions, modularization, reuse                        |
| 09    | Signals, processes, job control                         |
| 10    | Integration and mini-projects                           |

---

## 🛠 Requirements

* ✅ Linux or WSL
* ✅ Installed: `bash`, `sh`, `coreutils`
* ✅ You **must install Vim** (used to edit exercises):

```bash
sudo apt install vim
```

---

## ▶️ How to use it

1. **Clone the repository**:

```bash
git clone https://github.com/youruser/embedded-linux-scripts.git
cd embedded-linux-scripts
```

2. **Make the menu script executable and run it**:

```bash
chmod +x menu.sh
./menu.sh
```

3. **Explore the blocks**
   The system will detect which blocks are unlocked and let you continue step by step.

4. **Each exercise**:

   * Shows the description
   * Opens in `vim` when you press ENTER
   * After saving and exiting, your solution is automatically tested
   * If it passes, you proceed to the next exercise

---

## 📈 Progress and Unlocking

* Each completed block unlocks the next automatically
* Progress is saved locally
* You can view your progress from the main menu

---

## 👥 Contributions

Want to help?

* Contribute new blocks or improve existing tests
* Suggest new exercises or report bugs in [Issues](https://github.com/youruser/embedded-linux-scripts/issues)

---

## 📜 License

This project is under the MIT License.
Use it, share it, and level up your Linux scripting skills!

---

**Happy hacking!**
📬 Feel free to open an issue if you have questions or suggestions.
