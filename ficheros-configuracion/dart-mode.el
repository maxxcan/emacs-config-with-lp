(setq dart-format-on-save t)

(add-hook 'dart-mode-hook 'lsp)

(with-eval-after-load "projectile"
  (add-to-list 'projectile-project-root-files-bottom-up "pubspec.yaml")
  (add-to-list 'projectile-project-root-files-bottom-up "BUILD"))

(setq lsp-auto-guess-root t)

