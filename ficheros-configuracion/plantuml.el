(add-to-list 'auto-mode-alist '("\\.plantuml\\'" . plantuml-mode))

;; set  the default Execution mode to jar
;(setq plantuml-default-exec-mode 'jar)

(setq plantuml-jar-path (expand-file-name "/usr/bin/plantuml"))
