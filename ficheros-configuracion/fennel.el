;; (require 'fennel-mode)

;; ;; By default fennel-mode moves focus to the \*inferior-lisp\* buffer
;; ;; setting `fennel-mode-switch-to-repl-after-reload' to nil prevents this
;; (customize-save-variable 'fennel-mode-switch-to-repl-after-reload nil)

;; (add-to-list 'auto-mode-alist '("\\.fnl\\'" . fennel-mode))

;; ;; you can bind this to whatever you like
;; (defun run-love ()
;;   (interactive)
;;   (run-lisp "love ."))

;; ;; for some reason when I load a fnl file it starts the slime minor mode
;; ;; I have included the hook below to prevent this
;; (defun fennel-mode-hook-fun ()
;;   (interactive)
;;   (slime-mode nil))

;; (add-hook 'fennel-mode-hook 'fennel-mode-hook-fun)


;; (eval-after-load 'fennel-mode
;;   '(define-key fennel-mode-map (kbd "C-c C-k")
;;      (defun pnh-fennel-hotswap ()
;;        (interactive)
;;        (comint-send-string
;;         (inferior-lisp-proc)
;;         (format "(lume.hotswap \"%s\")\n"
;;                 (substring (file-name-nondirectory (buffer-file-name)) 0 -4))))))
