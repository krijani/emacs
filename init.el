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
   '("04d8595e5772f1dc7a4c1737ba4589d32c695221270134e0763bd87834a42bbc" "9398969cf7214748a41a02e35c660b5325cfa0832ea2a04bd1eb2b600665dd74" "8c3fb19472b8d40ac19152b9a7d4575a6c44b40253dd7f5630eccbdc463011eb" "f0eb51d80f73b247eb03ab216f94e9f86177863fb7e48b44aacaddbfe3357cf1" "81f2e389938b9117dc939845ed75ce48584dd01f870d9315d20a56d36d750423" "ba099d9f4f87bc9c2d5ae497782e05b88dfbe746e3c96df6a8a19668f8ad7518" "28a104f642d09d3e5c62ce3464ea2c143b9130167282ea97ddcc3607b381823f" "ff375cb365f7797dc6fdeabcce5aacefb3faa8c7877b6108f21dea9145e51382" "35c096aa0975d104688a9e59e28860f5af6bb4459fd692ed47557727848e6dfe" "2d035eb93f92384d11f18ed00930e5cc9964281915689fa035719cab71766a15" default))
 '(doc-view-continuous t)
 '(inhibit-startup-screen t)
 '(warning-suppress-types '((comp)))
 '(widget-image-enable nil))
(custom-set-faces
 ;; custom-set-faces was added by Custom.
 ;; If you edit it by hand, you could mess it up, so be careful.
 ;; Your init file should contain only one such instance.
 ;; If there is more than one, they won't work right.
 )
