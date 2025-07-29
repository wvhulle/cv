# Resume

Typst-based resume using modular styling.

## Commands

```bash
# Compile to PDF
typst compile resume.typ

# Watch for changes and auto-compile
typst watch resume.typ

# Compile to specific output
typst compile resume.typ output.pdf
```

Load the nix-shell. Then run `code .`. 

In VS-Code, press CTRL+K,V

## Files

- `resume.typ` - Main resume content
- `resume-style.typ` - Styling functions
- `shell.nix` - Nix development environment