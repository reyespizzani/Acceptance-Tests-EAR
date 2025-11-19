Feature: Requisitos de Calidad y Rendimiento

  # US26 – Rendimiento
  Scenario: Tiempo de carga menor a 3 segundos
    DADO QUE el usuario accede a la plataforma
    CUANDO se inicia la carga de la pantalla principal
    ENTONCES el tiempo de carga total no debe superar los 3 segundos

  # US27 – Seguridad
  Scenario: Datos sensibles cifrados correctamente
    DADO QUE el usuario registra o envía información personal
    CUANDO el sistema almacena o procesa dichos datos
    ENTONCES la información debe cifrarse completamente
    Y mantenerse protegida ante accesos no autorizados

  # US28 – Disponibilidad
  Scenario: Plataforma operativa todo el día
    DADO QUE un usuario intenta acceder en cualquier horario
    CUANDO realiza una solicitud al sistema
    ENTONCES la disponibilidad del servicio debe ser mayor al 99%

  # US29 – Usabilidad
  Scenario: Navegación simple sin entrenamiento previo
    DADO QUE el usuario navega por la plataforma
    CUANDO utiliza los menús y botones principales
    ENTONCES debe poder completar tareas básicas sin instrucciones externas
