(defun my-eww-save-image (filename)
  "Save an image opened in an *eww* buffer to a file."
  (interactive "G")
  (let ((image (get-text-property (point-min) 'display)))
    (with-temp-buffer
      (setq buffer-file-name filename)
      (insert
       (plist-get (if (eq (car image) 'image) (cdr image)) :data))
      (save-buffer))))
