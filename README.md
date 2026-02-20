# Week Number in Tray (TimeTray)

![Java](https://img.shields.io/badge/Java-ED8B00?style=flat-square&logo=openjdk&logoColor=white)
![License: WTFPL](https://img.shields.io/badge/License-WTFPL-brightgreen.svg?style=flat-square)

A lightweight Java application that displays the current calendar week number in the system tray.

> **Note:** This repository is a fork of [otacke/timetray](https://github.com/otacke/timetray).

## Overview

TimeTray is a simple, cross-platform Java utility that adds a small icon to your operating system's system tray displaying the current ISO calendar week number. Hovering over the icon shows a tooltip with the full date and time. The application includes a settings window for adjusting the week number offset, making it useful for aligning with academic semester weeks or regional calendar variations.

## Features

- **System Tray Integration** -- Displays the current week number directly in the system tray
- **Tooltip Information** -- Hover over the icon to see the full date and time
- **Adjustable Offset** -- Shift the displayed week number via a slider (useful for semester week alignment)
- **Customizable Appearance** -- Configure background color, font color, and font style via a settings file
- **Persistent Settings** -- Preferences are automatically saved to `~/.timetray`
- **Cross-Platform** -- Runs on Windows, Linux, and macOS with Java support

## Prerequisites

- **Java Runtime Environment (JRE)** 8 or higher
- **Java Development Kit (JDK)** (only required for building from source)

## Getting Started

### Installation

1. Clone the repository:
   ```bash
   git clone https://github.com/danielcregg/week-num-in-tray.git
   cd week-num-in-tray
   ```

2. Run the pre-built JAR file:
   ```bash
   java -jar TimeTray.jar
   ```

### Usage

**Running the application:**
```bash
java -jar TimeTray.jar
```

**Building from source:**

On Linux/macOS:
```bash
./setup.sh
```

On Windows:
```bash
setup.bat
```

Or manually:
```bash
rm -rf *.class *.jar
javac TimeTray.java
jar -cmf TimeTray.mf TimeTray.jar *.class
java -jar TimeTray.jar
```

**Adding to Windows startup:**
1. Navigate to `%APPDATA%\Microsoft\Windows\Start Menu\Programs\Startup`
2. Create a shortcut with the target:
   ```
   "C:\Program Files\OpenJDK\jdk-13.0.1\bin\javaw.exe" -jar "C:\WeekNum\TimeTray.jar"
   ```

**Customizing settings:**

Edit the `~/.timetray` file to change appearance values (one per line):
1. Background color (R, G, B, Alpha -- values 0-255)
2. Font color (R, G, B, Alpha -- values 0-255)
3. Week offset (-1, 0, or 1)
4. Font family name
5. Font style (0 = plain)
6. Date format pattern for tooltip

## Tech Stack

| Technology | Purpose |
|---|---|
| Java AWT/Swing | System tray integration and settings UI |
| Java Calendar API | Week number calculation |
| JAR Packaging | Distributable application format |

## License

This project is licensed under the WTFPL License. See the [license.txt](license.txt) file for details.
