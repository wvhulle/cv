{ pkgs ? import <nixpkgs> {} }:

pkgs.mkShell {
  buildInputs = with pkgs; [
# LaTeX distribution with packages needed for your resume
    (texlive.combine {
      inherit (texlive) 
        scheme-medium
        # Additional packages missing from scheme-medium
        preprint titlesec marvosym enumitem;
    })
    
    # Modern LaTeX editor with extensions
    texstudio
    
    # Spell checking
    aspell
    aspellDicts.en
    aspellDicts.nl
    aspellDicts.de
    aspellDicts.fr
    
    # PDF viewer
    zathura
    
    # Build tools
    gnumake
  ];
  
  shellHook = ''
    echo "LaTeX development environment loaded!"
    echo "Available tools:"
    echo "  - pdflatex/xelatex/lualatex: LaTeX compilers"  
    echo "  - texstudio: Modern LaTeX editor with spell check"
    echo "  - aspell: Spell checker (en/nl/de/fr dictionaries)"
    echo "  - zathura: PDF viewer"
    echo ""
    echo "To compile your resume:"
    echo "  pdflatex resume.tex"
    echo ""
    echo "To open TeXstudio:"
    echo "  texstudio resume.tex &"
  '';
}