(defun zone-upper-case-text ()
  (interactive)
  (zone-fill-out-screen (window-width) (window-height))
  (random t)
  (goto-char (point-min))
  (while (not (input-pending-p))
    (let ((wbeg (window-start))
          (wend (window-end)))

      ;;Keep moving the char cursor until its not whitespace
      (while (looking-at "[ \n\f]")
        (goto-char (+ wbeg (random (- wend wbeg))))))

    ;;If we are at the end of the buffer go to the last char
    (when (eobp) (goto-char (point-min)))

    ;;Read the char at the cursor
    (let ((c (char-after (point))))
      (delete-char 1)           ;; Remove the char
      (insert-char (upcase c))) ;; Reinsert with caps      

    ;;Sleep
    (zone-park/sit-for (point-min) 0.1)))
