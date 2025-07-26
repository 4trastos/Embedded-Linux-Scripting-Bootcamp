
````markdown
# 🧠 Embedded Linux Scripting Bootcamp

Bienvenido al **Embedded Linux Scripting Bootcamp**, un sistema de aprendizaje progresivo para dominar el scripting en Linux orientado a sistemas embebidos.

---

## 🚀 ¿Qué es esto?

Este proyecto contiene **100 ejercicios cuidadosamente diseñados** para ayudarte a aprender y dominar `shell scripting` (`sh` y `bash`) en entornos embebidos como BusyBox, QEMU o Buildroot.

La estructura está organizada en **bloques temáticos**, desde lo más básico hasta scripting avanzado en sistemas Linux minimalistas.

> 🎯 Cada bloque es una misión.  
> ✅ Solo puedes avanzar si completas el anterior.  
> 💡 ¡O activa el modo libre si solo quieres practicar!

---

## 🧩 ¿Qué aprenderás?

| Bloque | Temática                                                   |
|--------|------------------------------------------------------------|
| 01     | Fundamentos del Shell (`echo`, permisos, ejecución)        |
| 02     | Variables, argumentos, condicionales                       |
| 03     | Bucles, funciones, scripts modulares                       |
| 04     | Archivos, redirecciones, entrada/salida                    |
| 05     | Procesos, señales, background jobs                         |
| 06     | Filtros y texto: `grep`, `awk`, `sed`                      |
| 07     | Scripting para sistemas embebidos (BusyBox real)           |
| 08     | Automatización y herramientas (`Make`, `cron`)             |
| 09     | Debugging y optimización de scripts                        |
| 10     | Proyectos avanzados en entorno embebido                    |
| 11     | 🔥 **Desafíos reales de Linux embebido** *(NEW!)*          |

---

## 📦 Estructura del Proyecto

```bash
embedded-linux-scripts/
├── menu.sh                     # Menú principal interactivo
└── bloques/
    ├── bloque01/
    │   ├── enunciados/         # Enunciados de los ejercicios
    │   ├── tests/              # Scripts de test automático
    │   ├── soluciones/         # Tus soluciones (se generan al ejecutar)
    │   └── run_bloque.sh       # Lógica interactiva del bloque
    ├── bloque02/
    └── ...
````

---

## ▶️ Cómo usarlo

1. **Clona el repositorio**:

```bash
git clone https://github.com/4trastos/Embedded-Linux-Scripting-Bootcamp.git
cd Embedded-Linux-Scripting-Bootcamp
```

2. **Haz ejecutable el menú y ejecútalo**:

```bash
chmod +x menu.sh
./menu.sh
```

3. **Explora los bloques**

El sistema detectará tu progreso y te permitirá avanzar bloque a bloque.

4. **Cada ejercicio**:

* Te muestra el enunciado
* Al pulsar ENTER se abre en `vim`
* Tu script es corregido automáticamente
* Si apruebas, avanzas al siguiente

---

## 🔓 ¿Modo libre?

Si deseas practicar sin restricciones ni bloqueos, activa el **modo libre**:

```bash
export BOOTCAMP_MODE=free
./menu.sh
```

También puedes usarlo dentro de un bloque específico:

```bash
cd bloques/bloque07
export BOOTCAMP_MODE=free
./run_bloque.sh
```

---

## 📈 Progreso y Desbloqueo

* Cada bloque finalizado genera un `unlock_code.txt`
* Tu avance queda registrado en `.progreso.tmp`
* Desde el menú puedes ver tu progreso por bloque

---

## 🛠 Requisitos

* ✅ Linux, WSL o QEMU
* ✅ Instalados: `bash`, `sh`, `coreutils`, `vim`
* ✅ Opcional: BusyBox o entorno Buildroot para emular sistemas embebidos

```bash
sudo apt update
sudo apt install bash vim coreutils
```

---

## 👥 ¿Cómo contribuir?

¿Quieres colaborar?

* Agrega nuevos ejercicios, bloques o tests
* Mejora los scripts existentes
* Reporta bugs o ideas en [Issues](https://github.com/4trastos/Embedded-Linux-Scripting-Bootcamp/issues)

Pull requests bienvenidos 👇

```bash
git clone https://github.com/4trastos/Embedded-Linux-Scripting-Bootcamp.git
git checkout -b nueva-funcionalidad
# haz tus cambios...
```

---

## 📜 Licencia

Este proyecto está bajo la licencia MIT.
Puedes usarlo, estudiarlo, modificarlo y compartirlo libremente.

---

## 📬 Contacto

¿Dudas, ideas, propuestas?

* Abre un Issue
* O contáctame vía GitHub → [@4trastos](https://github.com/4trastos)

---

**¡A programar como un ninja del shell! 🐧**

```

## 🌐 English Version

````markdown
# 🧠 Embedded Linux Scripting Bootcamp

Welcome to the **Embedded Linux Scripting Bootcamp**, a progressive self-learning system to master shell scripting in Linux, specifically tailored for embedded environments.

---

## 🚀 What is this?

This project offers **100 carefully designed exercises** to help you learn and master `sh`/`bash` scripting in minimal or embedded Linux environments such as BusyBox, QEMU, or Buildroot.

The structure is organized into **thematic blocks**, from beginner-level tasks to advanced scripting challenges in real embedded contexts.

> 🎯 Each block is a mission.  
> ✅ You can only advance after passing the previous one.  
> 💡 Or unlock **Free Mode** for unrestricted practice!

---

## 🧩 What will you learn?

| Block | Topic                                                        |
|-------|--------------------------------------------------------------|
| 01    | Shell basics (`echo`, permissions, script execution)         |
| 02    | Variables, arguments, conditionals                           |
| 03    | Loops, functions, modular scripts                            |
| 04    | File handling, redirections, input/output                    |
| 05    | Processes, signals, background jobs                          |
| 06    | Filters and text tools: `grep`, `awk`, `sed`                 |
| 07    | Scripting for embedded systems (real BusyBox environments)   |
| 08    | Automation and tooling (`Make`, `cron`)                      |
| 09    | Script debugging and performance optimization                |
| 10    | Advanced projects in embedded contexts                       |
| 11    | 🔥 **Real-world embedded scripting challenges** *(NEW!)*     |

---

## 📦 Project Structure

```bash
embedded-linux-scripts/
├── menu.sh                     # Main interactive menu
└── bloques/
    ├── bloque01/
    │   ├── enunciados/         # Exercise descriptions
    │   ├── tests/              # Automated test scripts
    │   ├── soluciones/         # Your solutions (generated on execution)
    │   └── run_bloque.sh       # Interactive block logic
    ├── bloque02/
    └── ...
````

---

## ▶️ How to use

1. **Clone the repository**:

```bash
git clone https://github.com/4trastos/Embedded-Linux-Scripting-Bootcamp.git
cd Embedded-Linux-Scripting-Bootcamp
```

2. **Make the menu executable and run it**:

```bash
chmod +x menu.sh
./menu.sh
```

3. **Navigate through the blocks**

The system will detect your current progress and allow you to move forward step by step.

4. **Each exercise**:

* Displays the description
* Opens automatically in `vim` for you to edit
* Automatically tests your solution upon saving and exiting
* Lets you proceed only if your solution passes

---

## 🔓 Free Mode (practice without restrictions)

Want to explore freely without unlocking blocks?

```bash
export BOOTCAMP_MODE=free
./menu.sh
```

Or for a specific block:

```bash
cd bloques/bloque04
export BOOTCAMP_MODE=free
./run_bloque.sh
```

---

## 📈 Progress and Unlocking

* Each completed block generates a `unlock_code.txt`
* Your progress is saved in `.progreso.tmp`
* The menu shows your current completion status for each block

---

## 🛠 Requirements

* ✅ Linux, WSL, or QEMU
* ✅ Tools: `bash`, `sh`, `coreutils`, `vim`
* ✅ Optional: BusyBox or Buildroot to simulate embedded Linux

```bash
sudo apt update
sudo apt install bash vim coreutils
```

---

## 👥 Contributing

Want to contribute?

* Add new blocks or exercises
* Improve test scripts
* Report bugs or suggest ideas on [Issues](https://github.com/4trastos/Embedded-Linux-Scripting-Bootcamp/issues)

Pull requests are welcome 👇

```bash
git clone https://github.com/4trastos/Embedded-Linux-Scripting-Bootcamp.git
git checkout -b new-feature
# implement and commit changes
```

---

## 📜 License

This project is licensed under the MIT License.
Feel free to use, modify, learn from, and share it!

---

## 📬 Contact

Have questions, suggestions, or feedback?

* Open an Issue
* Or contact me via GitHub → [@4trastos](https://github.com/4trastos)

---

**💥 Let's script like embedded pros! 🐧**

```

