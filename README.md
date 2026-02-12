# CTS Quarto Journal Templates

This repository contains Quarto journal templates for 18 cardiothoracic surgery journals. All templates have been verified to render to PDF.

## Usage

To use a template, navigate to the specific journal's directory and copy the files to your project, or use the `quarto use template` command pointing to the directory.

### Quick Start
1.  **Choose your journal** from the list below.
2.  **Navigate** to the journal's directory (e.g., `cd the-annals-of-thoracic-surgery`).
3.  **Render** the template to confirm it works:
    ```bash
    quarto render template.qmd --to pdf
    ```
    *(Note: The main qmd file might be named after the journal, e.g., `the-annals-of-thoracic-surgery.qmd`)*

## Verified Journals

| Journal | Publisher | Template Type |
| :--- | :--- | :--- |
| **The Annals of Thoracic Surgery** | Elsevier | Official-like (Elsevier) |
| **European Journal of Cardio-Thoracic Surgery** | Oxford | Standard w/ Customization |
| **The Journal of Thoracic and Cardiovascular Surgery** | Elsevier | Official-like (Elsevier) |
| **Artificial Organs** | Wiley | Official-like (Wiley) |
| **Annals of Cardiothoracic Surgery** | AME | Standard w/ Customization |
| **ASAIO Journal** | Wolters Kluwer | Standard w/ Customization |
| **Asian Cardiovascular and Thoracic Annals** | SAGE | Official-like (SAGE) |
| **Brazilian Journal of Cardiovascular Surgery** | Sociedade Brasileira | Standard w/ Customization |
| **Circulation** | AHA / Wolters Kluwer | Standard w/ Customization |
| **Innovations** | SAGE | Official-like (SAGE) |
| **World Journal for Pediatric and Congenital Heart Surgery** | SAGE | Official-like (SAGE) |
| **Interdisciplinary Cardiovascular and Thoracic Surgery** | Oxford | Standard w/ Customization |
| **Multimedia Manual of Cardio-Thoracic Surgery** | EACTS | Standard w/ Customization |
| **Operative Techniques in Thoracic and Cardiovascular Surgery** | Elsevier | Official-like (Elsevier) |
| **Seminars in Thoracic & Cardiovascular Surgery** | Elsevier | Official-like (Elsevier) |
| **Seminars in Thoracic & Cardiovascular Surgery: Pediatric Cardiac Surgery Annual** | Elsevier | Official-like (Elsevier) |
| **Journal of Chest Surgery** | KSTCS | Standard w/ Customization |

## Verification

A `verify_all.sh` script is included in the root directory. You can run it to batch-render all templates and verify they are working correctly on your system.

```bash
./verify_all.sh
```

## Dependencies
- Quarto CLI
- TinyTeX (or a full LaTeX distribution)
- R (optional, used in some SAGE examples but not strictly required for the template structure if simple markdown is used)
