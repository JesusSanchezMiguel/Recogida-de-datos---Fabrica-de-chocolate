# 🍫 Sistema de Control para una Fábrica de Chocolate

<p align="center">
  <img src="https://img.shields.io/badge/Java-ED8B00?style=for-the-badge&logo=openjdk&logoColor=white" alt="Java"/>
  <img src="https://img.shields.io/badge/NetBeans-1B6AC6?style=for-the-badge&logo=apache-netbeans-ide&logoColor=white" alt="NetBeans"/>
  <img src="https://img.shields.io/badge/MySQL-4479A1?style=for-the-badge&logo=mysql&logoColor=white" alt="MySQL"/>
  <img src="https://img.shields.io/badge/Siemens%20S7--300-009999?style=for-the-badge&logo=siemens&logoColor=white" alt="Siemens S7-300"/>
</p>

<p align="center">
  Aplicación de escritorio en <b>Java</b> para supervisar y controlar una línea de producción de una fábrica de chocolate,
  mediante comunicación directa con un <b>PLC Siemens S7-300</b> a través de la librería <b>Moka7</b>.
  Proyecto Final del ciclo formativo <b>DAM (Desarrollo de Aplicaciones Multiplataforma)</b>.
</p>

---

## 📋 Descripción

Esta aplicación permite **arrancar y parar la producción** de una fábrica de chocolate, **registrar en tiempo real** los inicios y fines de producción, gestionar **alarmas** de la línea, y almacenar todos los datos (producciones, fallos/alarmas, productos, usuarios) en una base de datos **MySQL**. Además genera **informes** (manuales y automáticos) con JasperReports.

Está pensada como una alternativa **ligera, sencilla y económica** frente a los sistemas SCADA tradicionales, orientada a pequeñas empresas del sector industrial (PYMES) que necesitan trazabilidad de su producción sin grandes inversiones tecnológicas.

## ✨ Características principales

- 🔌 **Conexión con PLC Siemens S7-300** mediante la librería **Moka7** (lectura/escritura en memoria del autómata vía IP, bastidor y slot)
- ▶️⏹️ **Arranque y parada de la producción** de la fábrica desde la aplicación
- 📊 **Registro automático en tiempo real** de inicios/fines de producción y alarmas
- 🎭 **Modo simulación**: permite simular producciones y alarmas sin necesidad de PLC físico (útil para pruebas)
- 🗄️ **Base de datos MySQL** con tablas de productos, alarmas, registros de producción, registros de alarmas y usuarios
- 📄 **Generación de informes** (manuales y automáticos) con **JasperReports**: productos, usuarios, producciones y producción actual/última
- 👥 **Gestión de usuarios con roles** (login, registro, cambio de contraseña, administración de usuarios)
- 🚦 **Máquina de estados** de la instalación: `REPOSO` → `AUTOMÁTICO` → `ALARMA`

## 🖥️ Pantallas de la aplicación

- **Portada / General**: login/registro y estado general de la producción, siempre visible
- **Conexión con el autómata**: configuración de IP, bastidor y slot; conexión/desconexión; selección del origen de datos (PLC o simulación)
- **Informes**: generación manual de informes de productos, usuarios, producciones y producción actual
- **Simulación de datos PLC**: simulación de inicios/fines de producción y alarma, temperaturas y unidades fabricadas (se deshabilita si el origen de datos es el PLC)
- **Gestión de usuarios** (solo administradores): eliminar usuarios o concederles rol de administrador

> 📌 *Añade aquí capturas reales de las pantallas de tu aplicación.*

## 🔗 Lógica de recogida de datos

La aplicación ejecuta una **tarea cíclica cada segundo** que comprueba el estado de la conexión y escucha los triggers del PLC:

1. **REPOSO** → espera un trigger de *inicio de producción*
2. Al detectarlo, lee el código de producto, hace un `INSERT` en la BBDD con la hora de inicio → pasa a modo **AUTOMÁTICO**
3. En **AUTOMÁTICO** escucha triggers de *fin de producción* o *inicio de alarma*
   - Fin de producción → `UPDATE` con hora de fin y unidades producidas → vuelve a **REPOSO**
   - Inicio de alarma → `INSERT` de la alarma asociada a la producción actual → pasa a modo **ALARMA**
4. En **ALARMA** escucha *fin de alarma* (→ `UPDATE` y vuelta a **AUTOMÁTICO**) o *fin de producción* (→ **REPOSO**)

Todos los triggers se resetean a `0` desde la propia aplicación Java tras ser procesados.

## 🗄️ Base de datos (MySQL)

| Tabla | Descripción |
|---|---|
| `Codigos_alarmas` | Códigos preestablecidos de alarma (hasta 100 distintas) |
| `Codigos_productos` | Códigos de producto configurados en el PLC (hasta 15 distintos) |
| `Registros_alarmas` | Alarmas detectadas: producción asociada, código, hora de inicio y fin |
| `Registros_producciones` | Producciones detectadas: código de producto, unidades fabricadas, hora de inicio y fin |
| `Usuarios` | Usuarios de la aplicación y sus roles |

## 🛠️ Tecnologías utilizadas

- **Lenguaje:** Java
- **IDE:** NetBeans
- **Base de datos:** MySQL
- **Comunicación con PLC:** [Moka7](https://snap7.sourceforge.net/moka7.html) (librería Java para autómatas Siemens S7)
- **Informes:** JasperReports
- **Autómata:** Siemens S7-300

### Entorno de pruebas (sin PLC físico)

Para simular el PLC durante el desarrollo se ha usado:

- **Administrador SIMATIC** — programa de PLC de ejemplo con una VAT (tabla de variables) para forzar y visualizar variables
- **PLCSIM** — simulador del PLC S7-300
- **NetToPLCSim** — puente que crea la red virtual entre PLCSIM y la aplicación Java

> En un entorno real basta con que la aplicación esté en la misma red que el PLC físico; no es necesario todo este montaje de simulación.

## 📄 Informes generados

- **Informe de productos** — listado completo de productos registrados
- **Informe de usuarios** — listado completo de usuarios registrados
- **Informe de producciones** — listado de todas las producciones registradas
- **Informe de producción actual** — datos y alarmas de la producción en curso (o la última registrada)
- **Informe automático de producción** — se genera automáticamente al detectar el fin de una producción, dejando registrada toda la información y alarmas asociadas

## 🚀 Instalación

1. Clona el repositorio:
   ```bash
   git clone https://github.com/JesusSanchezMiguel/<nombre-del-repo>.git
   ```
2. Importa el proyecto en **NetBeans**
3. Crea la base de datos MySQL (`proyecto_jsm`) y ejecuta el script de creación de tablas incluido en el repo
4. Configura la conexión a la base de datos en el proyecto
5. (Opcional, sin PLC físico) Levanta el entorno de simulación con **Administrador SIMATIC + PLCSIM + NetToPLCSim**
6. Ejecuta la aplicación y conéctate al PLC desde el panel correspondiente (IP, bastidor y slot), o utiliza el **modo simulación**

## 🎓 Contexto académico

Proyecto Final del ciclo formativo de Grado Superior **DAM (Desarrollo de Aplicaciones Multiplataforma)** — IES Juan Bosco, Alcázar de San Juan.

## 🔮 Posibles mejoras

- Registrar más datos de la línea de producción
- Iniciar la producción real desde la propia aplicación
- Añadir productos desde la aplicación para que los lea el PLC
- Gráficas de temperaturas con registro temporal
- Fichero de eventos (log) de todo lo sucedido en la línea, incluyendo el usuario logeado en cada momento
- Envío de alarmas por correo o SMS
- API para servir los datos a distintos clientes
- Conexión con otras líneas de producción / varias plantas
- Mantenimiento predictivo con más datos históricos
- Estadísticas comparativas entre turnos o productos

## 👤 Autor

**Jesús Sánchez Miguel**
📎 [GitHub](https://github.com/JesusSanchezMiguel)

## 📄 Licencia

Proyecto con fines educativos (CC BY) — material para los ciclos de informática del IES Juan Bosco.
