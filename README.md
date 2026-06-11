# NREC4230 Agricultural Finance

This is a local Quarto coursebook for **NREC4230 Agricultural Finance**.

## Structure

- `index.qmd`: course homepage
- `part-i-agricultural-risk-management/`: Lectures 01 to 06
- `part-ii-agricultural-finance/`: Lectures 07 to 16
- `appendices/`: formulas, glossary, practice problems, Python code guide
- `figures/`: visual assets
- `code/`: optional Python and R files
- `data/`: optional teaching datasets

## Local preview

```powershell
cd C:\Users\o.golseven\Documents\nrec4230-local-quarto
quarto preview
```

## Full render

```powershell
cd C:\Users\o.golseven\Documents\nrec4230-local-quarto
quarto render
```

The rendered website will be created in `_site/`.

## Workflow

1. Edit one `.qmd` file.
2. Run `quarto preview`.
3. Check the page in the browser.
4. Fix formatting or code errors.
5. Run `quarto render` when all pages are stable.

## Notes

This project is currently local-first. Upload to the main website repository only after local rendering is stable.
