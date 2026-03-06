# XBOXGAMEPASS_LOOP

# 🟢 Xbox Game Pass Auto-Loop & Telegram C2

![Versión](https://img.shields.io/badge/Versión-2.0-brightgreen.svg)
![Estado](https://img.shields.io/badge/Estado-Estable-success.svg)
![Plataforma](https://img.shields.io/badge/Plataforma-Windows_10%2F11-lightgrey.svg)
![Tecnología](https://img.shields.io/badge/Tecnología-TypeScript_%7C_Playwright-blue.svg)

Herramienta de automatización avanzada diseñada para gestionar, cancelar y renovar cíclicamente suscripciones de **PC Game Pass** en el panel de facturación de Microsoft. Operado mediante un navegador *headless* y controlado remotamente a través de un bot de Telegram.

## Características Principales

*  **Bucle de Suscripción (Auto-Loop):** Navegación automatizada a través del portal de servicios de Microsoft para gestionar la suscripción sin intervención humana.
*  **Control de Mando (Telegram C2):** Interfaz remota en tiempo real. Permite disparar la automatización, comprobar el estado del sistema host y ejecutar comandos de apagado a distancia.
* 🛡️ **Bypass de Autenticación (Session Hijacking local):** Utiliza un sistema de persistencia de cookies locales (`storageState`) para entrar al panel de Microsoft esquivando las validaciones de 2FA y sin almacenar contraseñas en texto plano.
 **Anti-Detección Avanzada:** Implementación de cursores fantasma (`ghost-cursor`) y perfiles de navegador inyectados para evitar los bloqueos de seguridad anti-bots de Microsoft.
 **Ejecución en Background:** Modo silencioso programable para arrancar de forma invisible con el sistema operativo usando VBScript y tareas programadas (`schtasks`).

##  Requisitos Previos

* **Node.js** (v16 o superior)
* **npm** o **yarn**
* Un Token de Bot de Telegram (Obtenido vía *BotFather*)
* Una cuenta de Microsoft con una suscripción a PC Game Pass previamente activa (necesaria para inicializar el panel de facturación).

##  Instalación y Configuración inicial

1. **Clonar el repositorio:**
   ```bash
   git clone [https://github.com/TuUsuario/Xbox_GamePass_Loop.git](https://github.com/TuUsuario/Xbox_GamePass_Loop.git)
   cd Xbox_GamePass_Loop

