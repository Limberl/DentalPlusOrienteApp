# DentalPlusOrienteApp

## Arquitectura General

- Cliente: Navegador Web
- Interfaz: JSP + Servlets (Apache NetBeans)
- Lógica de negocio: Java
- Base de datos: MySQL
- Servidor de aplicaciones: Apache Tomcat 11
- Control de versiones: GitHub
- Gestión de tareas: Trello
- Integración continua: Travis CI
- Pruebas automatizadas: JUnit

### 2. Requerimientos

**a) Servidores de aplicación / web / BD**
- Servidor de aplicación: **Apache Tomcat 11.x**
- Servidor web: integrado en Tomcat
- Base de datos: no aplica en esta versión (recomendado **MySQL 8** para futura persistencia)

**b) Paquetes adicionales**
- **Jakarta Servlet API 6.0.0** (viene con Tomcat 11)
- **JUnit 4.13.2** y **Hamcrest 1.3** (para pruebas)  
  Ubicación en el proyecto: `libs/junit-4.13.2.jar` y `libs/hamcrest-core-1.3.jar`

**c) Versión de Java**
- **JDK 17** (compilación y ejecución)

#### Instalación

a. ¿Cómo instalar el ambiente de desarrollo?
- Descargar e instalar JDK 17 desde Oracle o Adoptium.
- Descargar e instalar Apache NetBeans 26.
- Instalar Apache Tomcat 11 y configurarlo en NetBeans como servidor.
- Clonar el repositorio del proyecto:
- git clone https://github.com/<tu_usuario>/DentalPlusOrienteApp.git
- Abrir el proyecto en NetBeans.
- Configurar el proyecto para usar Java 17 en las propiedades.

b. ¿Cómo ejecutar pruebas manualmente?
- En NetBeans, abrir la clase de prueba PacienteTest.java.
- Clic derecho sobre el archivo → Test File.
- Verificar en la ventana de salida que todas las pruebas pasan correctamente.

c. ¿Cómo implementar la solución en producción en un ambiente local o en la nube como Heroku?
- En ambiente local (Tomcat):
- En NetBeans, ir a Run → Clean and Build Project.
- Esto generará el archivo WAR en la carpeta dist/ del proyecto.
- Copiar el archivo DentalPlusOrienteApp.war a la carpeta webapps de Tomcat.
- Iniciar Tomcat y acceder desde el navegador:
- http://localhost:8080/DentalPlusOrienteApp/
- En la nube (Heroku con contenedor Tomcat):

##### 5. Uso

##### 5.1 Manual para usuario final
1. Abra `http://localhost:8080/DentalPlusOrienteApp/` (o `/registro.jsp` si no hay welcome-file).
2. Complete **Nombre** y **Edad** en el formulario.
3. Pulse **Registrar**.
4. Revise la confirmación en `registroExitoso.jsp` (muestra los datos enviados) y, si lo desea, registre otro paciente.

> Recomendado: incluir capturas en `docs/uso-form.png` y `docs/uso-exitoso.png`.

##### 5.2 Manual para usuario administrador
**Arranque/paro**
- NetBeans: **Run Project (F6)** / botón **Stop**.
- Tomcat (Windows): `bin/startup.bat` / `bin/shutdown.bat`.

**Despliegue**
- **In-place (NetBeans):** Run compila y despliega en `build/web`.
- **WAR (producción):** *Clean and Build* → copiar `dist/DentalPlusOrienteApp.war` a `TOMCAT_HOME/webapps/`.

**Logs**
- Tomcat: `TOMCAT_HOME/logs/` (p. ej. `localhost.YYYY-MM-DD.log`).
- NetBeans: Output → **Apache Tomcat or TomEE**.

**Pruebas y build**
- Pruebas: clic derecho `PacienteTest.java` → **Test File** (o `ant clean test`).
- Rebuild: **Clean and Build**.

**Solución de problemas**
- **404**: validar `<url-pattern>/RegistroPacienteServlet</url-pattern>` y `form action="RegistroPacienteServlet"`.
- **500 ClassNotFound**: servlet en *Source Packages*, luego **Clean and Build**.
- **Puerto 8080 ocupado**: cambiar en `conf/server.xml` o cerrar el proceso en uso.
