;; EMacs Configuration File
;; Written by Krishna Jani

;; Emacs Package Manager Straight.el
(defvar bootstrap-version)
(let ((bootstrap-file
       (expand-file-name "straight/repos/straight.el/bootstrap.el" user-emacs-directory))
      (bootstrap-version 5))
  (unless (file-exists-p bootstrap-file)
    (with-current-buffer
        (url-retrieve-synchronously
         "https://raw.githubusercontent.com/raxod502/straight.el/develop/install.el"
         'silent 'inhibit-cookies)
      (goto-char (point-max))
      (eval-print-last-sexp)))
  (load bootstrap-file nil 'nomessage))


;; Xah Fly Keys

(add-to-list 'load-path "~/.emacs.d/lisp/")

(require 'xah-fly-keys)

;; specify a layout
(xah-fly-keys-set-layout "qwerty")

(xah-fly-keys 1)

;; Something I am very irritated about in Emacs the Back-Up Files
;; I HATE THEM so I have disabled them here

(setq make-backup-files nil)


;; Loading the emacs Config (Literate Emacs config written in OrgMode
(load-file (concat user-emacs-directory "configuration.el"))
(load-file (concat user-emacs-directory "keybinds.el"))
(load-file (concat user-emacs-directory "fonts-server.el"))

(custom-set-variables
 ;; custom-set-variables was added by Custom.
 ;; If you edit it by hand, you could mess it up, so be careful.
 ;; Your init file should contain only one such instance.
 ;; If there is more than one, they won't work right.
 '(bongo-enabled-backends '(mpv))
 '(custom-safe-themes
   '("28a104f642d09d3e5c62ce3464ea2c143b9130167282ea97ddcc3607b381823f" "ff375cb365f7797dc6fdeabcce5aacefb3faa8c7877b6108f21dea9145e51382" "35c096aa0975d104688a9e59e28860f5af6bb4459fd692ed47557727848e6dfe" "2d035eb93f92384d11f18ed00930e5cc9964281915689fa035719cab71766a15" default))
 '(doc-view-continuous t)
 '(warning-suppress-types '((comp))))
(custom-set-faces
 ;; custom-set-faces was added by Custom.
 ;; If you edit it by hand, you could mess it up, so be careful.
 ;; Your init file should contain only one such instance.
 ;; If there is more than one, they won't work right.
 )
