(TeX-add-style-hook
 "plotGlm"
 (lambda ()
   (TeX-add-to-alist 'LaTeX-provided-package-options
                     '(("mathpazo" "sc") ("placeins" "section")))
   (add-to-list 'LaTeX-verbatim-environments-local "alltt")
   (TeX-run-style-hooks
    "latex2e"
    "article"
    "art10"
    "graphicx"
    "color"
    "framed"
    "alltt"
    "mathtools"
    "mathpazo"
    "geometry"
    "morefloats"
    "placeins"
    "longtable"
    "booktabs")
   (LaTeX-add-labels
    "tab:prob"))
 :latex)

