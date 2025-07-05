# 🔧 Project Boilerplate Automation Script

**Author**: Erick Lopez  
**Version**: 1.0.0  
**License**: MIT  
**Platform**: macOS / Unix-based systems

---

## Overview

This project includes a CLI-enabled Bash script (`boilerplate.sh`) that automates the creation of a standardized Python project structure. I designed to help me start new projects with a clean, consistent layout — ideal for data science, ML experiments, or general-purpose Python development.

The script focuses on automation, reproducibility, and engineering consistency.

---

## What It Does

When executed, the script:

1. Prompts the user for a project name
2. Creates the project folder on the Desktop
3. Initializes a Python virtual environment
4. Creates key project files:
   - `README.md`
   - `LICENSE` (MIT with dynamic year)
   - `requirements.txt`
5. Generates a subfolder `empirical` and within it are the following subdirectories: i_src, ii_utils, iii_logs, iv_static, v_notebooks, a_data, b_tests

6. Adds `__init__.py` to `i_src/` and `ii_utils/` to initialize Python packages
7. Generates subfolders within the directory 'a_data': raw, processed, versions, final
8. Once script is completed, its final output (stdout) is: "Boilerplate structure created at: <home/desktop/project_name>"
