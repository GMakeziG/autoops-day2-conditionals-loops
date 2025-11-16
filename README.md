# AutoOps+ Day 2 — Conditionals & Loops

Date: Nov 15  
Domain: Automation Coding Concepts (1.1)

This repo contains small scripts that practice:

- if/else logic  
- for/while loops  
- looping through files and JSON  
- combining conditions + loops for automation

## Layout

- `bash/` – Bash conditionals, loops, folder watcher
- `powershell/` – PowerShell conditionals and loops
- `python/` – Python loop over JSON
- `input/` – Sample `users.json` for testing

## Labs

1. Check file/service status with conditionals  
2. Loop through log files and print matches  
3. Watch a folder for changes in a loop  
4. Iterate over JSON users and print their names

## How to run

From repo root:

```bash
# Bash examples
chmod +x bash/*.sh
./bash/conditionals.sh
./bash/loops.sh
./bash/watcher.sh

# PowerShell examples (pwsh)
pwsh ./powershell/conditionals.ps1
pwsh ./powershell/loops.ps1

# Python example
python3 python/loops.py

```
autoops-day2-conditionals-loops/
├── README.md
├── bash/
│   ├── conditionals.sh
│   ├── loops.sh
│   └── watcher.sh
├── powershell/
│   ├── conditionals.ps1
│   └── loops.ps1
├── python/
│   └── loops.py
└── input/
    └── users.json
```