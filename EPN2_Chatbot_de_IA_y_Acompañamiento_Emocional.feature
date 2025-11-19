Feature: Chatbot de Acompañamiento Emocional

  # US6 – Chat con IA
  Scenario: Usuario inicia conversación y recibe respuesta inmediata
    DADO QUE el usuario accede a la sección "Chat emocional"
    CUANDO envía un mensaje al chatbot
    ENTONCES el chatbot responde de forma inmediata
    Y el tono de la respuesta debe ser empático

  # US7 – Detección emocional
  Scenario: El chatbot identifica la emoción expresada por el usuario
    DADO QUE el usuario envía un mensaje describiendo su estado de ánimo
    CUANDO el sistema analiza el texto ingresado
    ENTONCES el chatbot clasifica la emoción en:
      | tristeza | ansiedad | estrés | calma |

  # US8 – Recomendaciones personalizadas
  Scenario: Chatbot sugiere ejercicios según la emoción detectada
    DADO QUE se detectó correctamente la emoción del usuario
    CUANDO el chatbot genera una respuesta
    ENTONCES debe sugerir un ejercicio alineado a dicha emoción
      | meditación | respiración | mindfulness | relajación guiada |

  # US9 – Derivación profesional
  Scenario: Chatbot detecta riesgo emocional alto
    DADO QUE el usuario envía un mensaje clasificado como "riesgo alto"
    CUANDO el sistema confirma patrones de alerta emocional
    ENTONCES el chatbot debe mostrar un mensaje de apoyo inmediato
    Y sugerir contactar a un psicólogo disponible
    Y activar la alerta de riesgo
