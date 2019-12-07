;; configuración para el org-mode

;; Org-mode, configuración general

;; Además de añadir notas y lugares comunes

  ;;; Should write a toggle function to show descriptive or literate links in Org-mode
  ;;(setq org-descriptive-links nil)

  ;; Define the location of the file to hold tasks
  (setq org-default-notes-file "~/Documentos/GTD/notas.org")

  ;; Define a kanban style set of stages for todo tasks
  (setq org-todo-keywords
        '((sequence "PORHACER" "ENPROCESO" "BLOQUEADO" "REVISION" "|" "HECHO" "ARCHIVADO")))

  ;; Setting Colours (faces) for todo states to give clearer view of work
  (setq org-todo-keyword-faces
        '(("PORHACER" . org-warning)
          ("ENPROCESO" . "yellow")
          ("BLOQUEADO" . "red")
          ("REVISION" . "orange")
          ("HECHO" . "green")
          ("ARCHIVADO" .  "blue")))

  ;; Progress Logging
  ;; When a TODO item enters DONE, add a CLOSED: property with current date-time stamp
  (setq org-log-done 'time)

  (setq org-agenda-files (list "~/Documentos/GTD/GTD.org"))

  (setq org-agenda-include-diary t)
  (setq org-agenda-include-all-todo t)

;;; Identado en los bloques de código en org-mode

(setq org-src-tab-acts-natively t)


;; org-reveal

(require 'ox-reveal)

;; (setq org-reveal-root "file:///opt/reveal.js/") 


;; configuración del calendario chulo

(require 'calfw-org)
(setq cfw:org-overwrite-default-keybinding t)
(setq calendar-week-start-day 1)
(setq calendar-month-name-array
      ["Enero" "Febrero" "Marzo" "Abril" "Mayo" "Junio"
       "Julio"    "Agosto"   "Septiembre" "Octubre" "Noviembre" "Diciembre"])
(setq calendar-day-name-array
      ["Domingo" "Lunes" "Martes" "Miércoles" "Jueves" "Viernes" "Sábado"])

;; Prettier bullets

(use-package org-bullets
  :commands (org-bullets-mode)
  :init
  (setq org-bullets-bullet-list '("●"))
  (add-hook 'org-mode-hook #'org-bullets-mode))

;; configuración para el autocompletado de org con org-ac

(require 'org-ac)
(org-ac/config-default)

;; wrap

(add-hook 'org-mode-hook 'turn-on-visual-line-mode)

;;Configure org-mode with cider

;; Configure Org-mode supported languages
(org-babel-do-load-languages
 'org-babel-load-languages
 '((clojure . t)
   (dot . t)
   (emacs-lisp . t)))

;; Specify the Clojure back-end we want to use in Org-mode.
;; I personally use Cider, but one could specify Slime
(setq org-babel-clojure-backend 'cider)


(defun gtd ()
  "Entrada principal para el archivo gtd"
  (interactive)
  (find-file "~/Documentos/GTD/GTD.org"))

(defun actividades ()
  "Entrada para el archivo de actividades"
  (interactive)
  (find-file "~/Documentos/GTD/Actividades.org"))

(defun notas ()
  "Entraa para el archivo de notas"
  (interactive)
  (find-file "~/Documentos/GTD/notas.org"))

;;;;;;;;; ya veré para qué es esto

(setq org-irc-link-to-logs t)

(require 'org-id)
(setq org-id-link-to-org-use-id 'create-if-interactive)


;;;;;;;;;;;; org-present

(eval-after-load "org-present"
  '(progn
     (add-hook 'org-present-mode-hook
               (lambda ()
                 (org-present-big)
                 (org-display-inline-images)
                 (org-present-hide-cursor)
                 (org-present-read-only)))
     (add-hook 'org-present-mode-quit-hook
               (lambda ()
                 (org-present-small)
                 (org-remove-inline-images)
                 (org-present-show-cursor)
                 (org-present-read-write)))))


(setq org-modules '(org-habit))
(eval-after-load 'org '(org-load-modules-maybe t))


;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;; org for cider

(setq org-babel-clojure-backend 'cider)
(require 'cider)


(setq org-babel-clojure-sync-nrepl-timeout nil)

;; Let's have pretty source code blocks
(setq org-edit-src-content-indentation 0
      org-src-tab-acts-natively t
      org-src-fontify-natively t
      org-confirm-babel-evaluate nil
      org-support-shift-select 'always)

;; make sure that when we export in HTML, that we don't export with inline css.
;; that way the CSS of the HTML theme will be used instead which is better
(setq org-html-htmlize-output-type 'css)

;; Enable Confluence export
(require 'ox-confluence)


;; enconder los signos de puntuación como el asterisco para los resaltados

(setq org-hide-emphasis-markers t)
