;; Xah Fly Keys Configuration

(with-eval-after-load 'xah-fly-keys
  ;; Command mode keybindings:
  (define-key xah-fly-command-map (kbd "SPC f") #'consult-buffer)
  (define-key xah-fly-command-map (kbd "n") #'swiper)
  (define-key xah-fly-command-map (kbd "SPC g") #'revert-buffer)
  (define-key xah-fly-command-map (kbd "SPC e p") #'org-latex-export-to-pdf))
