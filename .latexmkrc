# latexmk configuration for the presentation.
# minted requires shell-escape; biblatex uses biber (latexmk runs it automatically).
$pdf_mode = 1;
$pdflatex = 'pdflatex -shell-escape -interaction=nonstopmode -synctex=1 %O %S';

# Treat minted's cache dir and biber by-products as removable.
$clean_ext = 'bbl nav snm vrb run.xml synctex.gz';
push @generated_exts, 'bcf', 'run.xml';
