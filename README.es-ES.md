

# Scripts de Configuración para Desarrolladores en Ubuntu (ubuntu-run)

Scripts para instalar y configurar software y paquetes después de instalar un Ubuntu nuevo para desarrolladores.

## Instalación

Para usar estos scripts, sigue estos pasos:

1. Clona el repositorio:

    ```bash
    git clone https://github.com/azonedev/ubuntu-run.git
    ```

2. Cambia al directorio del repositorio:

    ```bash
    cd ubuntu-run
    ```

3. Ejecuta el script de instalación:

    ```bash
    chmod +x install.sh
    ./install.sh
    ```

## Uso

El script de instalación (`install.sh`) ofrece un conjunto de opciones para instalar y configurar varios programas y paquetes. El script te solicitará confirmación en cada paso de la instalación. Responde "sí" o "no" según corresponda.

### Opciones Disponibles

1. **Actualizar y Actualizar el Sistema**: Actualiza y actualiza el sistema.

2. **Google Chrome**: Instala Google Chrome (configuración de perfiles posteriormente).

3. **Actualizar Snap**: Actualiza el gestor de paquetes snap.

4. **Editores de Código (VS Code, PhpStorm, dbgate)**: Instala Visual Studio Code, PhpStorm y dbgate.

5. **Otras Herramientas (curl, git, jq, postman, PHP)**: Instala curl, git, jq, postman y PHP.

6. **Composer**: Instala Composer, un gestor de dependencias para PHP.

7. **Go**: Instala el lenguaje de programación Go.

8. **Descargar Apployee**: Descarga la aplicación de escritorio Apployee.

9. **Ejecutar Apployee**: Ejecuta la aplicación de escritorio Apployee.

10. **Reproductor VLC**: Instala el reproductor multimedia VLC.

11. **TablePlus**: Instala Table Plus.

12. **RocketChat**: Instala Rocket Chat.

13. **Docker y Docker-Compose**: Instala Docker y Docker-Compose.

### Notas

- Para la instalación de Docker, debes cerrar sesión y volver a iniciarla para aplicar los cambios de grupo.

- Reinicia tu sistema después de completar la instalación para que algunos cambios surtan efecto.

### Personalización
Siéntete libre de personalizar el script `install.sh` según tus necesidades específicas. Puedes comentar o agregar comandos de instalación adicionales para adaptar la configuración a tus preferencias.

### Contribuir
Si tienes sugerencias para mejoras o nuevo software/paquetes que agregar, no dudes en abrir un issue o enviar un pull request. ¡Las contribuciones son bienvenidas!

### Licencia
Este proyecto está licenciado bajo la Licencia MIT. Siéntete libre de usar, modificar y distribuir el código según los términos de la licencia.

¡Feliz programación! 🚀
