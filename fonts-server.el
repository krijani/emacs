;; Fonts Setup that works in an emacs server environment 
(defun custo/setup-font-faces ()
  "Setup all customacs font faces."
  ;;re-disable GUI stuff we don't care about
  (push '(menu-bar-lines . 0) default-frame-alist)
  (push '(tool-bar-lines . 0) default-frame-alist)
  (push '(vertical-scroll-bars) default-frame-alist)
  (when (display-graphic-p)
    ;; set default font
    (set-face-attribute 'default nil :font (font-spec :family "Iosevka" :size 20 :weight 'regular))
    ;; Set the fixed pitch face
    (set-face-attribute 'fixed-pitch nil :font (font-spec :family "Iosevka" :size 20 :weight 'regular))
    ;; Set the variable pitch face which is the same for mac and linux
    (set-face-attribute 'variable-pitch nil :font (font-spec :family "Iosevka Etoile" :size 20 :weight 'regular))
    ;; after org-mode we want to adjust font sizes
    (with-eval-after-load 'org
      (dolist (face '((org-level-1 . 1.3)
                      (org-level-2 . 1.25)
                      (org-level-3 . 1.20)
                      (org-level-4 . 1.15)
                      (org-level-5 . 1.10)
                      (org-level-6 . 1.05)
                      (org-level-7 . 1.0)
                      (org-level-8 . 1.0)))
        (set-face-attribute (car face) nil :font "Iosevka Aile" :weight 'regular :height (cdr face))
        )

      ;; Ensure that anything that should be fixed-pitch in Org files appears that way
      (set-face-attribute 'org-block nil :foreground nil :inherit 'fixed-pitch)
      (set-face-attribute 'org-code nil   :inherit '(shadow fixed-pitch))
      (set-face-attribute 'org-table nil   :inherit '(shadow fixed-pitch))
      (set-face-attribute 'org-verbatim nil :inherit '(shadow fixed-pitch))
      (set-face-attribute 'org-special-keyword nil :inherit '(font-lock-comment-face fixed-pitch))
      (set-face-attribute 'org-meta-line nil :inherit '(font-lock-comment-face fixed-pitch))
      (set-face-attribute 'org-checkbox nil :inherit 'fixed-pitch)
      )
    ;; set current frame to 120x45 characters
    (set-frame-width (frame-focus) 120)
    (set-frame-height (frame-focus) 45)
    )
  )
;; run this hook after we have initialized the first time
(add-hook 'after-init-hook 'custo/setup-font-faces)
;; re-run this hook if we create a new frame from daemonized Emacs
(add-hook 'server-after-make-frame-hook 'custo/setup-font-faces)
