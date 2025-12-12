# Mathematics Learning Book

This repository contains a mathematics book written in LaTeX, organized into chapters covering various mathematical topics.

## Structure

```
.
├── main.tex              # Main LaTeX file that compiles the entire book
├── chapters/             # Directory containing individual chapter files
│   ├── chapter01.tex    # Chapter 1: Introduction to Mathematical Concepts
│   ├── chapter02.tex    # Chapter 2: Algebra and Number Theory
│   └── chapter03.tex    # Chapter 3: Calculus and Analysis
├── references.bib        # Bibliography file for citations
├── Makefile             # Build automation
└── README.md            # This file
```

## Prerequisites

To compile this book, you need a LaTeX distribution installed on your system:

- **Linux**: Install TeX Live
  ```bash
  sudo apt-get install texlive-full
  ```

- **macOS**: Install MacTeX
  ```bash
  brew install --cask mactex
  ```

- **Windows**: Install MiKTeX or TeX Live
  - Download from [MiKTeX](https://miktex.org/) or [TeX Live](https://www.tug.org/texlive/)

## Building the Book

### Using Make (Recommended)

The easiest way to compile the book is using the provided Makefile:

```bash
# Full build with bibliography
make

# Quick build (single pass, no bibliography)
make quick

# Clean auxiliary files
make clean

# Clean everything including PDF
make cleanall

# View the PDF (Linux only)
make view
```

### Manual Compilation

If you prefer to compile manually:

```bash
# Full compilation with bibliography
pdflatex main.tex
bibtex main
pdflatex main.tex
pdflatex main.tex
```

The output will be `main.pdf`.

## Adding New Chapters

To add a new chapter:

1. Create a new file in the `chapters/` directory (e.g., `chapter04.tex`)
2. Add the chapter content using the following template:

```latex
\chapter{Your Chapter Title}

Your chapter content goes here...

\section{Section Title}

Section content...
```

3. Include the new chapter in `main.tex` by adding:

```latex
\include{chapters/chapter04}
```

## LaTeX Packages Used

- `amsmath, amsthm, amssymb` - Mathematical symbols and theorem environments
- `graphicx` - Include images and figures
- `hyperref` - Hyperlinks and PDF metadata
- `geometry` - Page layout and margins

## Theorem Environments

The following theorem environments are defined:

- `theorem` - For theorems
- `lemma` - For lemmas
- `proposition` - For propositions
- `corollary` - For corollaries
- `definition` - For definitions
- `example` - For examples
- `remark` - For remarks

Example usage:

```latex
\begin{theorem}
Your theorem statement here.
\end{theorem}

\begin{proof}
Your proof here.
\end{proof}
```

## Citations

Add references to `references.bib` in BibTeX format, then cite them in your text:

```latex
According to \cite{rudin1976principles}, ...
```

## Contributing

When adding content:

1. Keep mathematical notation consistent
2. Include proofs for major theorems
3. Add exercises at the end of each chapter
4. Update this README if you add new structure or dependencies

## License

See LICENSE file for details.