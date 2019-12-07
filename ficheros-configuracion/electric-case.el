;; configuración de electric-case que nos transforma
;; test-foo a TestFoo

(add-hook 'prog-mode-hook #'rainbow-delimiters-mode)


(require 'electric-case)

;;;; para añadirlo a java

(add-hook 'java-mode-hook 'electric-case-java-init)

