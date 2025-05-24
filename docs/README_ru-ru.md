<div align="center">

<img src="https://raw.githubusercontent.com/farag2/Sophia-Script-for-Windows/refs/heads/master/img/Sophia.png" alt="Sophia Script for Windows" width='150'>

# Sophia Script for Windows

**Sophia Script for Windows — это самый мощный PowerShell-модуль для тонкой настройки Windows**

[downloads-badge]: https://img.shields.io/endpoint?url=https://gist.githubusercontent.com/farag2/25ddc72387f298503b752ad5b8d16eed/raw/SophiaScriptDownloadsCount.json
[lines-badge]: https://img.shields.io/endpoint?url=https://gist.githubusercontent.com/farag2/9852d6b9569a91bf69ceba8a94cc97f4/raw/SophiaScript.json
[lines-link]: https://github.com/farag2/Sophia-Script-for-Windows/blob/master/.github/workflows/Badge_lines.yml
[badge-code]: https://github.com/farag2/Sophia-Script-for-Windows/blob/master/.github/workflows/Badge_downloads.yml

[![downloads][downloads-badge]][badge-code]
[![lines][lines-badge]][lines-link]

[telegram-news-badge]: https://img.shields.io/badge/Sophia%20News-Telegram-blue?style=flat&logo=Telegram
[telegram-news]: https://t.me/sophianews
[telegram-group]: https://t.me/sophia_chat
[telegram-group-badge]: https://img.shields.io/endpoint?color=neon&label=Sophia%20Chat&style=flat&url=https%3A%2F%2Ftg.sumanjay.workers.dev%2Fsophia_chat
[discord-news-badge]: https://discordapp.com/api/guilds/1006179075263561779/widget.png?style=shield
[discord-link]: https://discord.gg/sSryhaEv79

[![Telegram][telegram-news-badge]][telegram-news]
[![Telegram][telegram-group-badge]][telegram-group]
[![Discord][discord-news-badge]][discord-link]

[![build](https://img.shields.io/github/actions/workflow/status/farag2/Sophia-Script-for-Windows/Sophia.yml?label=build&logo=GitHub)](https://github.com/farag2/Sophia-Script-for-Windows/actions)
[![GitHub Release](https://img.shields.io/github/v/release/farag2/Sophia-Script-for-Windows?logo=GitHub)](https://github.com/farag2/Sophia-Script-for-Windows/releases/latest)

[![en-US](https://img.shields.io/badge/lang-en--us-green)](../README.md)
[![uk-UA](https://img.shields.io/badge/lang-uk--UA-blue)](./README_uk-ua.md)
[![de](https://img.shields.io/badge/lang-de-black)](./README_de-de.md)

<img src="../img/SophiaScript.png" alt="Sophia Script for Windows" width='800'>

</div>

## О Sophia Script

`Sophia Script for Windows` — это самый мощный PowerShell-модуль на `GitHub` для тонкой настройки `Windows 10` и `Windows 11` и автоматизации рутинных задач. Он предлагает более 150 уникальных твиков и показывает, как можно настоить Windows, ничего не сломав.

Сделано с <img src="https://raw.githubusercontent.com/farag2/Sophia-Script-for-Windows/master/img/heart.svg" height="17px"/> к Windows.

> [!IMPORTANT]
> Каждый твик в пресет-файле имеет соответствующую функцию для возврата значений по умолчанию. Использование скрипта лучше всего производить на свежеустановленной Windows в связи с тем, что неправильно настроенная ОС может вызвать сбои при работе скрипта.

> [!WARNING]
> При использовании скрипта только один администратор должен войти в систему.
>
> `Sophia Script for Windows` может не работать на кастомных образах Windows. Особенно, если такой образ был создан дилетантами, которые ломают работу Microsoft Defender и выключают работу телеметрии, удаляя системные компоненты из системы.

## Содержание

* [Как скачать](#как-скачать)
  * [Скачать через PowerShell](#скачать-через-powershell)
  * [Скачать через Chocolatey](#скачать-через-chocolatey)
  * [Скачать через WinGet](#скачать-через-winget)
  * [Со страницы релиза](#со-страницы-релиза)
* [Как использовать](#как-использовать)
  * [Как выполнить конкретную функцию(и)](#как-выполните-конкретную-функциюи)
  * [Wrapper](#wrapper)
  * [Как откатить изменения](#как-откатить-изменения)
* [Пожертвования](#пожертвования)
* [Системные требования](#системные-требования)
* [Ключевые возможности](#ключевые-возможности)
* [Скриншоты](#скриншоты)
* [Видео](#видео)
* [Перевод](#перевод)
* [Ссылки](#ссылки)
* [SophiApp 2](#sophiapp-2-c--winui-3)

## Как скачать

### Скачать через PowerShell

Команда скачает и распакуют последнюю версию архива Sophia Script (`без последующего запуска`) согласно тем версиям Windows и PowerShell, на которых она запускалась. Допустим, если вы запустите ее на Windows 11 в PowerShell 5.1, то скачается Sophia Script для `Windows 11 PowerShell 5.1`.

```powershell
iwr script.sophia.team -useb | iex
```

Команда скачает и распакуют последнюю версию архива Sophia Script (`без последующего запуска`) из последнего доступного коммита согласно тем версиям Windows и PowerShell, на которых она запускалась.

```powershell
iwr sl.sophia.team -useb | iex
```

### Скачать через Chocolatey

Команда скачает и распакуют последнюю версию архива Sophia Script (`без последующего запуска`) согласно версии Windows, на которой она запускалась. Допустим, если вы запустите ее на Windows 11, то скачается Sophia Script для `Windows 11`. По умолчанию для `PowerShell 5.1`, если не указано обратное.

```powershell
choco install sophia --force -y
```

Скачать `Sophia Script for Windows` для `PowerShell 7`.

```powershell
choco install sophia --params "/PS7" --force -y
```

```powershell
# Удалить Sophia Script
# Удалите скачанную папку вручную
choco uninstall sophia --force -y
```

### Скачать через WinGet

Команда завантажує тільки архів для `Windows 11 (PowerShell 5.1)` у вашу папку `Завантаження` (порівняно зі [скриптом](#скачать-через-winget) для `Chocolatey`) і розпаковує його.

```powershell
$DownloadsFolder = Get-ItemPropertyValue -Path "HKCU:\Software\Microsoft\Windows\CurrentVersion\Explorer\User Shell Folders" -Name "{374DE290-123F-4565-9164-39C4925E467B}"
winget install --id TeamSophia.SophiaScript --location $DownloadsFolder --accept-source-agreements --force
```

```powershell
# Удалить Sophia Script
winget uninstall --id TeamSophia.SophiaScript --force
```

### Со страницы релиза

Скачайте [архив](https://github.com/farag2/Sophia-Script-for-Windows/releases/latest) согласно версиям ваших Windows и PowerShell.

## Как использовать

* Скачайте и распакуйте архив;
* Просмотрите файл `Sophia.ps1` для настройки того, что выхотите, чтобы запускалось;
  * Поставьте символ `#` перед функцией, если не хотите, чтобы она не запускалась.
  * Удалите символ `#` перед функцией, если хотите, чтобы она запускалась.
* Скопируйте полный путь до файла `Sophia.ps1`
  * В `Windows 10` зажмите и удержите клавишу <kbd>Shift</kbd>, нажмите ПКМ по `Sophia.ps1` и кликните на `Копировать как путь`;
  * В `Windows 11` нажмите ПКМ по `Sophia.ps1` and кликните на `Копировать как путь`.
* Откройте `Windows PowerShell`
  * В `Windows 10` нажмите на файл в проводнике, наведите на `Запустить Windows PowerShell` и нажмите на `Запустить Windows PowerShell от имени администратора` [(инструкция в скриншотах)](https://www.howtogeek.com/662611/9-ways-to-open-powershell-in-windows-10/)
  * В `Windows 11` нажмите ПКМ по иконке <kbd>Windows</kbd> и откройте `Terminal (Администратор)`;
* Установите политику выполнения, чтобы можно было выполнять скрипты в текущей сессии PowerShell;

```powershell
  Set-ExecutionPolicy -ExecutionPolicy Bypass -Scope Process -Force
```

* Введите `.\Sophia.ps1` и нажмите <kbd>Enter</kbd>;

```powershell
  .\Sophia.ps1
```

### Windows 11

<https://github.com/user-attachments/assets/2654b005-9577-4e56-ac9e-501d3e8a18bd>

### Windows 10

<https://github.com/user-attachments/assets/f5bda68f-9509-41dc-b3b1-1518aeaee36f>

### Как выполните конкретную функцию(и)

* Выполните все шаги из пункта [Как использовать](#как-использовать) и остановитесь на пункте по изменнию политики выполнения скриптов в `PowerShell`;
* Сначала загрузите файл `Import-TabCompletion.ps1` через [дот сорсинг](https://learn.microsoft.com/en-us/powershell/module/microsoft.powershell.core/about/about_operators#dot-sourcing-operator-):

```powershell
# С точкой в начале
. .\Import-TabCompletion.ps1
```

* Теперь вы можете выполнять такие команды (необходимы кавычки)

```powershell
Sophia -Functions<TAB>
Sophia -Functions temp<TAB>
Sophia -Functions unin<TAB>
Sophia -Functions uwp<TAB>
Sophia -Functions "DiagTrackService -Disable", "DiagnosticDataLevel -Minimal", UninstallUWPApps

UninstallUWPApps, "PinToStart -UnpinAll"
```

Или используйте старый формат без автопродления функций через <kbd>TAB</kbd> (необходимы кавычки)

```powershell
.\Sophia.ps1 -Functions CreateRestorePoint, "ScheduledTasks -Disable", "WindowsCapabilities -Uninstall"
```

<https://github.com/user-attachments/assets/ea90122a-bdb3-4687-bf8b-9b6e7af46826>

## Wrapper

![Image](https://github.com/farag2/Sophia-Script-for-Windows/raw/master/img/Wrapper.png)

@BenchTweakGaming

* Скачайте [последнюю](https://github.com/farag2/Sophia-Script-for-Windows/releases/latest) версию;
* Распакуйте архив;
* Запустите `SophiaScriptWrapper.exe` и импортируйте `Sophia.ps1`;
  * Файл `Sophia.ps1` должен находиться в папке `Sophia Script`;
  * Wrapper имеет рендеринг UI в режиме реального времени;
* Настройте каждую функцию;
* Откройте раздел `Вывод консоли` и нажмите `Запустить PowerShell`.

## Как откатить изменения

* Выполните все шаги из пункта [Как использовать](#как-использовать) и остановитесь на пункте по изменнию политики выполнения скриптов в `PowerShell`;
* Сначала загрузите файл `Import-TabCompletion.ps1` через [дот сорсинг](https://learn.microsoft.com/en-us/powershell/module/microsoft.powershell.core/about/about_operators#dot-sourcing-operator-):

```powershell
# С точкой в начале
. .\Import-TabCompletion.ps1
```

* Вызовите функции из пресета `Sophia.ps1`, которые вы хотите откатить.

```powershell
Sophia -Functions "DiagTrackService -Enable", UninstallUWPApps
```

## Пожертвования

[![ko-fi](https://www.ko-fi.com/img/githubbutton_sm.svg)](https://ko-fi.com/farag)⠀⠀⠀<a href="https://boosty.to/teamsophia"><img src="https://raw.githubusercontent.com/farag2/Sophia-Script-for-Windows/master/img/boosty.png" width='40'></a>

## Системные требования

[Windows-10]: https://support.microsoft.com/topic/windows-10-update-history-8127c2c6-6edf-4fdf-8b9f-0f7be1ef3562
[Windows-10-LTSC-2019]: https://support.microsoft.com/topic/windows-10-and-windows-server-2019-update-history-725fc2e1-4443-6831-a5ca-51ff5cbcb059
[Windows-10-LTSC-2021]: https://support.microsoft.com/topic/windows-10-update-history-857b8ccb-71e4-49e5-b3f6-7073197d98fb
[Windows-11-LTSC-2024]: https://support.microsoft.com/topic/windows-11-version-24h2-update-history-0929c747-1815-4543-8461-0160d16f15e5
[Windows-11-24h2]: https://support.microsoft.com/topic/windows-11-version-24h2-update-history-0929c747-1815-4543-8461-0160d16f15e5

|                Версия                    | Маркетинговое название |                        Билд                  |      Издание        |
|:-----------------------------------------|-----------------------:|:--------------------------------------------:|:-------------------:|
| Windows 11 24H2                          | 2024 Update            | [Последняя стабильная][Windows-11-24h2]      | Home/Pro/Enterprise |
| Windows 10 x64 22H2                      | 2022 Update            | [Последняя стабильная][Windows-10]           | Home/Pro/Enterprise |
| Windows 11 Enterprise LTSC 2024          | 2024 Update            | [Последняя стабильная][Windows-11-LTSC-2024] | Enterprise          |
| Windows 10 x64 21H2 Enterprise LTSC 2021 | October 2021 Update    | [Последняя стабильная][Windows-10-LTSC-2021] | Enterprise          |
| Windows 10 x64 1809 Enterprise LTSC 2019 | October 2018 Update    | [Последняя стабильная][Windows-10-LTSC-2019] | Enterprise          |

## Ключевые возможности

* Все архивы собираются с использованием GitHub Actions [автоматически](https://github.com/farag2/Sophia-Script-for-Windows/actions);
* Настроить приватность и передачу телеметрии;
* Включить DNS-over-HTTPS для IPv4;
* Выключить диагностические задания в Планировщике заданий с помощью всплывыющего окошка, написанного на [WPF](#скриншоты);
* Настроить UI и персонализацию;
* "Правильно" удалить OneDrive;
* Интерактивные [подсказки](#программно-изменить-расположение-пользовательских-папок-с-помощью-интерактивного-меню);
* [Автопродление](#автопродление-функций-с-помощью-tab-подробнее-здесь) функций и их аргументов с помощью <kbd>TAB</kbd> (при условии использования файла Import-TabCompletion.ps1);
* Программно изменить расположение пользовательских папок с помощью интерактивного меню (без перемещения пользовательских файлов), используя стрелки для выбора диска
  * Рабочий стол
  * Документы
  * Загрузки
  * Музыка
  * Изображения
  * Видео
* Установить бесплатный (светлый и темный) курсор "Windows 11 Cursors Concept v2" от [Jepri Creations](https://www.deviantart.com/jepricreations/art/Windows-11-Cursors-Concept-v2-886489356) на лету (без перезагрузок);
* Удалить UWP-приложения, отображая их локализированные имена пакетов;
  * Скрипт генерирует список установленных UWP-приложений [динамически](#локализированные-имена-пакетов)
* Отключить компоненты Windows, отображая локализированные пакеты с помощью всплывающего окошка, написанного на [WPF](#скриншоты);
* Удалить дополнительные компоненты Windows, отображая локализированные пакеты с помощью всплывающего окошка, написанного на [WPF](#скриншоты);
* Скачать и установить [Расширения для видео HEVC от производителя](https://apps.microsoft.com/detail/9N4WGH0Z6VHQ), чтобы иметь поддержку формата [HEVC](https://en.wikipedia.org/wiki/H.265);
* Установить приложение по умолчанию для конкретного расширения без всплывающего окошка "Каким образом вы хотите открыть этот файл?", используя специльную [функцию](https://github.com/DanysysTeam/PS-SFTA);
* Экспортировать все ассоциации в Windows. Ассоциации будут экспортированы в файл `Application_Associations.json` в корне папки скрипта;
* Импортировать выгруженный `Application_Associations.json` после чистой установки. Вам необходимо установить все приложения из списка выгруженного `Application_Associations.json`, чтобы восстановить ассоциации;
* Установить любой поддерживаемый дистрибутив Linux через WSL, отображая локализированные имена дистрибутивов с помощью всплывающего окошка, написанного на [WPF](#скриншоты);
* Создать задания в Планировщике заданий с нативным тостовым уведомлением, где вы сможете запустить или отменить [выполнение](#нативные-тостовые-уведомления-для-заданий-планировщика-заданий) задания;
  * Создать задания `Windows Cleanup` и `Windows Cleanup Notification` для очистки Winsows от неиспользуемых файлов и файлов обновлений;
  * Создать задание `SoftwareDistribution` для очистки `%SystemRoot%\SoftwareDistribution\Download`;
  * Создать задание `Temp` для очистки `%TEMP%`.
* Установить последней версии распространяемых пакетов Microsoft Visual C++ 2015–2022 x86/x64;
* Установить последней версии распространяемых пакетов .NET Desktop Runtime 8, 9 x86/x64;
* Настроить безопасность Windows;
* Отобразить все ключи политик реестра в оснастке редактирования групповых политик (gpedit.msc);
* Много других твиков проводника и контекстного меню.

## Скриншоты

### Автопродление функций с помощью <kbd>TAB</kbd>. Подробнее [здесь](#как-выполните-конкретную-функциюи)

https://user-images.githubusercontent.com/10544660/225270281-908abad1-d125-4cae-a19b-2cf80d5d2751.mp4

### Программно изменить расположение пользовательских папок с помощью интерактивного меню

https://user-images.githubusercontent.com/10544660/253818031-b7ce6bf1-d968-41ea-a5c0-27f6845de402.mp4

### Локализированные имена пакетов

![Image](https://i.imgur.com/xeiBbes.png) ![Image](https://i.imgur.com/0zj0h2S.png)

### Локализированные имена компонентов Windows

![Image](https://i.imgur.com/xlMR2mz.png) ![Image](https://i.imgur.com/yl9j9Vt.png)

### Скачать и установить любые поддерживаемые дистрибутивые Linux через WSL в автоматическом режиме

![Image](https://i.imgur.com/Xn5SqxE.png)

### Нативные тостовые уведомления для заданий Планировщика заданий

![Image](https://github.com/farag2/Sophia-Script-for-Windows/raw/master/img/Toasts.png)

## Видео

[![YT](https://img.youtube.com/vi/q_weQifFM58/0.jpg)](https://www.youtube.com/watch?v=q_weQifFM58)

[![YT](https://img.youtube.com/vi/8E6OT_QcHaU/1.jpg)](https://youtu.be/8E6OT_QcHaU?t=370) [![YT](https://img.youtube.com/vi/091SOihvx0k/1.jpg)](https://youtu.be/091SOihvx0k?t=490)

## Перевод

* Выполните команду `$PSUICulture` в PowerShell, чтобы узнать код культуры;
* Создайте папку с названием вашей культуры;
* Поместите ваш переведенный файл SophiaScript.psd1 в эту папку.

## Ссылки

* [XDA](https://www.xda-developers.com/sophia-script-returns-control-windows-11)
* [4sysops](https://4sysops.com/archives/windows-10-sophia-script-powershell-functions-for-windows-10-fine-tuning-and-automating-routine-configuration-tasks/)
* [gHacks](https://www.ghacks.net/2020/09/27/windows-10-setup-script-has-a-new-name-and-is-now-easier-to-use/)
* [Neowin](https://www.neowin.net/news/this-windows-10-setup-script-lets-you-fine-tune-around-150-functions-for-new-installs)
* [Comss.ru](https://www.comss.ru/page.php?id=8019)
* [Habr](https://habr.com/company/skillfactory/blog/553800)
* [Deskmodder.de](https://www.deskmodder.de/blog/2021/08/07/sophia-script-for-windows-jetzt-fuer-windows-11-und-10/)
* [PCsoleil Informatique](https://www.pcsoleil.fr/successeur-de-win10-initial-setup-script-sophia-script-comment-lutiliser/)
* [Reddit (archived)](https://www.reddit.com/r/PowerShell/comments/go2n5v/powershell_script_setup_windows_10/)
  * PM [me](https://www.reddit.com/user/farag2/)
* [Ru-Board](https://forum.ru-board.com/topic.cgi?forum=62&topic=30617#15)
* [rutracker](https://rutracker.org/forum/viewtopic.php?t=5996011)
* [My Digital Life](https://forums.mydigitallife.net/threads/powershell-windows-10-sophia-script.81675/)

***

## SophiApp 2 (C# + WinUI 3)

[SophiApp 2.0](https://github.com/Sophia-Community/SophiApp) находится в активной разработке. 🚀

![Image](https://github.com/farag2/Sophia-Script-for-Windows/raw/master/img/0.gif)
![Image](https://github.com/farag2/Sophia-Script-for-Windows/raw/master/img/1.png)
