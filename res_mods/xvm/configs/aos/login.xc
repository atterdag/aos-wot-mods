﻿/**
 * Parameters for login screen
 * Параметры экрана логина
 */
{
  "login": {
    // Skip intro movie
    // Пропустить вступительное видео
    "skipIntro": true,
    // Auto enter to the game
    // Автоматический вход в игру
    "autologin": false,
    // Auto confirm old replays playing
    // Автоматически подтверждать проигрывание старых реплеев
    "confirmOldReplays": false,
    // Ping servers
    // Пинг серверов
    "pingServers": {
      "$ref": { "file": "hangar.xc", "path": "hangar.pingServers" },
      // true - Show ping to the servers
      // true - показывать пинг до серверов
      "enabled": true,
      // Axis field coordinates
      // Положение поля по осям
      "x": 15,
      "y": 35
    }
  }
}
