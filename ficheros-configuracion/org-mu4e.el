;;store org-mode links to messages
(require 'org-mu4e)
;;store link to message if in header view, not to header query
(setq org-mu4e-link-query-in-headers-mode nil)
(setq org-capture-templates
      '(("t" "por hacer" entry (file+headline "~/Documentos/GTD/GTD.org" "Tareas")
         "* PORHACER [#A] %?\nSCHEDULED: %(org-insert-time-stamp (org-read-date nil t \"+0d\"))\n%a\n\n\n")
        ("a" "archivar" entry (file+headline "~/Documentos/GTD/archive.org" "Archivo"))))

