# 🎮 KnowAboutEsports

**KnowAboutEsports** es un proyecto desarrollado con **Ruby**, **Sinatra**, y **ActiveRecord**, diseñado para gestionar preguntas y respuestas relacionadas con eSports. Este archivo describe los pasos necesarios para instalar, configurar y ejecutar la aplicación, además de detallar el acceso al usuario administrador predeterminado.

## ✅ Requisitos previos

Antes de comenzar, asegúrate de tener instalado lo siguiente en tu máquina:

- **Ruby** (versión 2.7.5 o superior) 💎
- **Bundler** (gem para gestionar dependencias Ruby) 📦
- **SQLite3** (base de datos utilizada por defecto) 🗄️
- **Git** (para clonar el repositorio) 🔗

Si necesitas instalar Ruby y Bundler:
```bash
# Instalar Ruby
sudo apt update
sudo apt install ruby-full

# Instalar Bundler
gem install bundler
```

## 🚀 Instrucciones de instalación

Sigue estos pasos para configurar y ejecutar la aplicación:

1. **Clonar el repositorio** 🛠️
   ```bash
   git clone <URL_DEL_REPOSITORIO>
   cd knowaboutesports
   ```

2. **Instalar las dependencias** 📦
   ```bash
   bundle install
   ```

3. **Configurar la base de datos** 🗄️
   Inicializa y migra la base de datos:
   ```bash
   rake db:create db:migrate db:seed
   ```
   > El comando `db:seed` crea un usuario administrador predeterminado con las credenciales:
   > - **Usuario**: `admin`
   > - **Contraseña**: `admin`

4. **Ejecutar la aplicación** 🌐
   Inicia el servidor usando **Rack**:
   ```bash
   rackup -p 4567
   ```
   Por defecto, la aplicación estará disponible en [http://localhost:4567](http://localhost:4567).

## 🏆 Funcionalidades principales

- **Usuarios comunes** pueden:
  - 📝 Registrarse y participar en trivias.
  - 📊 Consultar su progreso.
  - 🎮 Acceder a trivias específicas de eSports según el juego seleccionado.

- **Administradores** pueden:
  - ➕ Crear nuevas preguntas y respuestas.
  - 📈 Listar las preguntas más contestadas incorrectamente y correctamente.

## ⚙️ Configuración adicional

Si necesitas modificar la configuración de la base de datos, ajusta el archivo `config/database.yml`. Por defecto, se utiliza SQLite3 para desarrollo.

## 🔐 Credenciales del administrador

- **Usuario**: `admin`
- **Contraseña**: `admin`

Usa estas credenciales para acceder a las funcionalidades administrativas de la aplicación.

## 💬 Soporte

Si encuentras algún problema o tienes preguntas, abre un issue en el repositorio o contacta al desarrollador.

---

✨ ¡Gracias por usar **KnowAboutEsports**! ✨
