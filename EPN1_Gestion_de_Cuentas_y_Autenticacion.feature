Feature: Gestión de Usuarios

  # US1 – Registro de Usuario
  Scenario: Registro exitoso de un usuario nuevo
    DADO QUE el usuario selecciona la opción "Crear cuenta"
    Y el correo ingresado no está registrado
    CUANDO completa los campos obligatorios con datos válidos
      | correo | contraseña |
    Y presiona "Registrarse"
    ENTONCES el sistema crea la cuenta del usuario
    Y muestra el mensaje "Registro exitoso"

  # US2 – Inicio de sesión
  Scenario: Inicio de sesión con credenciales válidas
    DADO QUE el usuario tiene una cuenta registrada
    CUANDO ingresa su correo y contraseña correctos
    Y presiona "Iniciar sesión"
    ENTONCES el sistema valida las credenciales
    Y redirige al usuario a su panel principal

  # US3 – Recuperación de contraseña
  Scenario: Solicitud de recuperación de contraseña
    DADO QUE el usuario selecciona la opción "¿Olvidaste tu contraseña?"
    Y ingresa un correo registrado
    CUANDO presiona "Enviar recuperación"
    ENTONCES el sistema envía un correo de recuperación
    Y el tiempo de envío no debe superar los 2 minutos

  # US4 – Edición de perfil
  Scenario: Usuario actualiza datos personales
    DADO QUE el usuario ha iniciado sesión correctamente
    Y accede a "Mi Perfil"
    CUANDO modifica uno o más campos válidos
    Y presiona "Guardar cambios"
    ENTONCES el sistema actualiza la información
    Y los cambios deben mantenerse después de cerrar sesión y volver a ingresar

  # US5 – Registro de psicólogo
  Scenario: Registro exitoso de psicólogo con credenciales válidas
    DADO QUE el psicólogo selecciona la opción "Registrarse como profesional"
    CUANDO ingresa sus datos y credenciales profesionales correctas
      | nombre | apellido | correo | especialidad | númeroColegiatura |
    Y presiona "Registrar"
    ENTONCES el sistema valida las credenciales
    Y aprueba el registro del profesional
    Y muestra "Registro de psicólogo validado"
