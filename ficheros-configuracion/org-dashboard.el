(defun my/org-dashboard-filter (entry)
  (and (> (plist-get entry :progress-percent) 0)
       (< (plist-get entry :progress-percent) 100)
       (not (member "archive" (plist-get entry :tags)))))

(setq org-dashboard-filter 'my/org-dashboard-filter)

