(defun cesco/easy-hugo ()
  (interactive)
  (evil-define-key
    (list 'normal 'insert 'visual 'motion)
    easy-hugo-mode-map
    "n" 'easy-hugo-newpost
    "D" 'easy-hugo-article
    "p" 'easy-hugo-preview
    "P" 'easy-hugo-publish
    "o" 'easy-hugo-open
    "d" 'easy-hugo-delete
    "e" 'easy-hugo-open
    "c" 'easy-hugo-open-config
    "f" 'easy-hugo-open
    "N" 'easy-hugo-no-help
    "v" 'easy-hugo-view
    "r" 'easy-hugo-refresh
    "g" 'easy-hugo-refresh
    "s" 'easy-hugo-sort-time
    "S" 'easy-hugo-sort-char
    "G" 'easy-hugo-github-deploy
    "A" 'easy-hugo-amazon-s3-deploy
    "C" 'easy-hugo-google-cloud-storage-deploy
    "q" 'evil-delete-buffer
    (kbd "TAB") 'easy-hugo-open
    (kbd "RET") 'easy-hugo-preview)
  (define-key global-map (kbd "C-c C-e") 'easy/hugo))


(use-package easy-hugo
  :after (helm-ag)
  :ensure t
  :config
  (setq easy-hugo-basedir "~/go/src/github.com/cescoferraro/me/"
	easy-hugo-postdir "content/blog"
        easy-hugo-url "http://127.0.0.1:1313/me"
        easy-hugo-preview-url "http://127.0.0.1:1313/me"
        easy-hugo-sshdomain "me"
        easy-hugo-root "~/go/src/github.com/cescoferraro/me/"
        easy-hugo-previewtime "20")
  (add-hook 'easy-hugo-mode-hook 'cesco/easy-hugo))

(setq easy-hugo-basedir "~/Trabajo/kidscodes/kidscodes/")
(setq easy-hugo-url "https://kidscodes.es")
(setq easy-hugo-root "/home/maxxcan/Trabajo/kidscodes/")
(setq easy-hugo-previewtime "300")
(define-key global-map (kbd "C-c C-e") 'easy-hugo)
