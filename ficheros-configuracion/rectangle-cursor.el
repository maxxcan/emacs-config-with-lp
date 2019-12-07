(require 'easymenu)

(dolist
    (item
     '((begin-tabify menu-item "--")
       ["Tabify" tabify :help "(tabify START END &optional ARG)\n\nConvert multiple spaces in region to tabs when possible.\nA group of spaces is partially replaced by tabs\nwhen this can be done without changing the column they end at.\nIf called interactively with prefix ARG, convert for the entire\nbuffer.\n\nCalled non-interactively, the region is specified by arguments\nSTART and END, rather than by the position of point and mark.\nThe variable `tab-width' controls the spacing of tab stops."]
       ["Untabify" untabify :help "(untabify START END &optional ARG)\n\nConvert all tabs in region to multiple spaces, preserving columns.\nIf called interactively with prefix ARG, convert for the entire\nbuffer.\n\nCalled non-interactively, the region is specified by arguments\nSTART and END, rather than by the position of point and mark.\nThe variable `tab-width' controls the spacing of tab stops."]
       (after-tabify menu-item "--")))
  (easy-menu-add-item global-map
                      '("menu-bar" "edit")
                      item "bookmark"))

(easy-menu-add-item global-map
                    '("menu-bar" "edit")
                    ["Rectangle Mark Mode" rectangle-mark-mode :style toggle :selected rectangle-mark-mode :help "(rectangle-mark-mode &optional ARG)\n\nToggle the region as rectangular.\nActivates the region if needed.  Only lasts until the region is deactivated."]
                    "bookmark")

(with-eval-after-load 'rect
  (easy-menu-define my-rectangle-mark-mode-map-menu rectangle-mark-mode-map "Menu for Rectangle Mark Mode Map."
    '("Rectangle"
      ["String Rectangle" string-rectangle :help "(string-rectangle START END STRING)\n\nReplace rectangle contents with STRING on each line.\nThe length of STRING need not be the same as the rectangle width.\n\nWhen called interactively and option `rectangle-preview' is\nnon-nil, display the result as the user enters the string into\nthe minibuffer.\n\nCalled from a program, takes three args; START, END and STRING."]
      ["Delete Rectangle" delete-rectangle :help "(delete-rectangle START END &optional FILL)\n\nDelete (don't save) text in the region-rectangle.\nThe same range of columns is deleted in each line starting with the\nline where the region begins and ending with the line where the region\nends.\n\nWhen called from a program the rectangle's corners are START and END.\nWith a prefix (or a FILL) argument, also fill lines where nothing has\nto be deleted."]
      "--"
      ["Kill Rectangle" kill-rectangle :help "(kill-rectangle START END &optional FILL)\n\nDelete the region-rectangle and save it as the last killed one.\n\nWhen called from a program the rectangle's corners are START and END.\nYou might prefer to use `delete-extract-rectangle' from a program.\n\nWith a prefix (or a FILL) argument, also fill lines where nothing has to be\ndeleted.\n\nIf the buffer is read-only, Emacs will beep and refrain from deleting\nthe rectangle, but put it in `killed-rectangle' anyway.  This means that\nyou can use this command to copy text from a read-only buffer.\n(If the variable `kill-read-only-ok' is non-nil, then this won't\neven beep.)"]
      ["Copy Rectangle As Kill" copy-rectangle-as-kill :help "(copy-rectangle-as-kill START END)\n\nCopy the region-rectangle and save it as the last killed one."]
      ["Yank Rectangle" yank-rectangle :help "(yank-rectangle)\n\nYank the last killed rectangle with upper left corner at point."]
      "--"
      ["Open Rectangle" open-rectangle :help "(open-rectangle START END &optional FILL)\n\nBlank out the region-rectangle, shifting text right.\n\nThe text previously in the region is not overwritten by the blanks,\nbut instead winds up to the right of the rectangle.\n\nWhen called from a program the rectangle's corners are START and END.\nWith a prefix (or a FILL) argument, fill with blanks even if there is\nno text on the right side of the rectangle."]
      ["Close Rectangle" close-rectangle :help "(close-rectangle START END &optional FILL)\n\nDelete all whitespace following a specified column in each line.\nThe left edge of the rectangle specifies the position in each line\nat which whitespace deletion should begin.  On each line in the\nrectangle, all contiguous whitespace starting at that column is deleted.\n\nWhen called from a program the rectangle's corners are START and END.\nWith a prefix (or a FILL) argument, also fill too short lines."]
      ["Clear Rectangle" clear-rectangle :help "(clear-rectangle START END &optional FILL)\n\nBlank out the region-rectangle.\nThe text previously in the region is overwritten with blanks.\n\nWhen called from a program the rectangle's corners are START and END.\nWith a prefix (or a FILL) argument, also fill with blanks the parts of the\nrectangle which were empty."]
      "--"
      ["Rectangle Number Lines" rectangle-number-lines :help "(rectangle-number-lines START END START-AT &optional FORMAT)\n\nInsert numbers in front of the region-rectangle.\n\nSTART-AT, if non-nil, should be a number from which to begin\ncounting.  FORMAT, if non-nil, should be a format string to pass\nto `format' along with the line count.  When called interactively\nwith a prefix argument, prompt for START-AT and FORMAT."]
      "--"
      ["Rectangle Exchange Point And Mark" rectangle-exchange-point-and-mark :help "(rectangle-exchange-point-and-mark &optional ARG)\n\nLike `exchange-point-and-mark' but cycles through the rectangle's corners."]
      "--"
      ["Quit" keyboard-quit :help "(keyboard-quit)\n\nSignal a `quit' condition.\nDuring execution of Lisp code, this character causes a quit directly.\nAt top-level, as an editor command, this simply beeps."])))

(dolist
    (item
     '((begin-rect menu-item "--")
       ["Rectangle Mark Mode" rectangle-mark-mode :style toggle :selected rectangle-mark-mode :help "(rectangle-mark-mode &optional ARG)\n\nToggle the region as rectangular.\nActivates the region if needed.  Only lasts until the region is deactivated."]
       (after-rect menu-item "--")))
  (easy-menu-add-item global-map
                      '("menu-bar" "edit")
                      item "bookmark"))
