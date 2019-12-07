(require 'dashboard)
(dashboard-setup-startup-hook)

;; Set the title
(setq dashboard-banner-logo-title "Bienvenido al mejor Editor del Mundo -- Emacs --")


(setq dashboard-startup-banner 'logo)
;; Value can be
;; 'official which displays the official emacs logo
;; 'logo which displays an alternative emacs logo
;; 1, 2 or 3 which displays one of the text banners
;; "path/to/your/image.png" which displays whatever image you would prefer

;; Content is not centered by default. To center, set
(setq dashboard-center-content nil)

;; To disable shortcut "jump" indicators for each section, set
(setq dashboard-show-shortcuts nil)

;;To customize which widgets are displayed, you can use the following snippet

(setq dashboard-items '((recents  . 5)
                        (projects . 5)
                        (agenda . 5)))

(setq dashboard-set-heading-icons t)
(setq dashboard-set-file-icons t)

(dashboard-modify-heading-icons '((recents . "file-text")
                                  (bookmarks . "book")))

(setq dashboard-set-init-info t)


(add-to-list 'dashboard-items '(agenda) t)

(setq show-week-agenda-p t)
