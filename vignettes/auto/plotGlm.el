(TeX-add-style-hook "plotGlm"
 (lambda ()
    (LaTeX-add-labels
     "tab:prob")
    (TeX-run-style-hooks
     "booktabs"
     "longtable"
     "placeins"
     "section"
     "morefloats"
     "geometry"
     "mathpazo"
     "sc"
     "mathtools"
     "alltt"
     "framed"
     "color"
     "graphicx"
     "latex2e"
     "art10"
     "article"
     "")))

