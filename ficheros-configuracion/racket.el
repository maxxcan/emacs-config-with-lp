;; con esto lo que hacemos es que el repl de Scheme es Racket en vez de ser Guile
;; https://emacs.stackexchange.com/questions/14110/how-do-i-set-org-mode-to-use-racket-instead-of-guile


(add-hook 'scheme-mode-hook 'geiser-mode)
(setq geiser-default-implementation 'racket)
