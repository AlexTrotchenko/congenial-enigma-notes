---
title: Literature Note - ESP32 Save Wi-Fi Credentials in a Separate File
author: Ron Brinkman (written by), Sara Santos (editor)
date: 202511072121
tags: [esp32, arduino, security, credentials, embeddedSystems, wiFi]
source: https://randomnerdtutorials.com/esp32-save-credentials-separate-file/
type: literature
---

# Key Takeaways from ESP32 Save Wi-Fi Credentials in a Separate File

## Summary
This tutorial demonstrates a method to store sensitive information like Wi-Fi credentials, API keys, and tokens in a separate header file within the Arduino libraries folder, rather than hardcoding them in sketch files. By creating a MyLogin.h file that contains #define statements for credentials and including it in sketches, developers can prevent accidental disclosure of personal information when sharing code and eliminate the need to repeatedly enter credentials for each new project.

## Key Points
- Create a custom library file (MyLogin.h) in the Arduino libraries folder to centralize all sensitive credentials using #define preprocessor directives
- Include the credentials file in sketches using #include <MyLogin.h>, then reference the defined constants (like STASSID and STAPSK) instead of hardcoded strings
- The approach prevents accidental sharing of credentials when distributing code since the MyLogin.h file remains in your local libraries folder and is not part of the sketch
- Multiple sets of credentials can be stored in commented sections of the file for easy switching between different locations (home, friends' houses, etc.)
- The method works for various types of sensitive data including Wi-Fi passwords, SMTP email credentials, API tokens, and dynamic DNS services
- Once configured, credentials are automatically incorporated during compilation without requiring any additional action from the developer
- The technique applies to any Arduino-based project, not just ESP32, making it widely applicable across embedded development

## Questions
- How does this library-based approach compare to other credential management methods like EEPROM storage, SPIFFS/LittleFS file systems, or environment variables in terms of security and convenience?
- What are the security implications if someone gains physical or remote access to your computer's Arduino libraries folder, and how could this be mitigated?
- Could this method be extended to support dynamic credential switching (e.g., automatically detecting location and selecting appropriate credentials) without manual editing of the header file?
- How does this approach integrate with version control systems like Git, and what additional precautions should be taken to ensure the MyLogin.h file is never accidentally committed to a repository?

## Source
[Original Article](https://randomnerdtutorials.com/esp32-save-credentials-separate-file/)
