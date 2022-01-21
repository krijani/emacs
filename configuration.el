;; Emacs Config
;; Emacs configuration is written by Krishna Jani

;; It includes the configuration of all the different packages that I use, on the other hand if you want to see my keybinds please see keybinds.el they are in a different file because I use Xah Fly Keys
(straight-use-package 'lavender-theme)
(load-theme 'lavender t)
(menu-bar-mode -1)
(scroll-bar-mode -1)
(tool-bar-mode -1)
(require 'org-tempo)


;; Needed if using emacsclient. Otherwise, your fonts will be smaller than expected.
;;(add-to-list 'default-frame-alist '(font . "Cascadia Code-13"))
;; changes certain keywords to symbols, such as lamda!
(setq global-prettify-symbols-mode t)

(straight-use-package 'org-bullets)
(setq org-bullets-bullet-list '("◉" "○" "●" "○" "●" "○" "●"))

;; 4.3 Hooks

(add-hook 'org-mode-hook 'org-bullets-mode)
;; It took me forever to figure out how to do this: (I found it on a reddit comment that began like this this is not me kjani)

(add-hook 'org-mode-hook #'(lambda ()

			     ;; make the lines in the buffer wrap around the edges of the screen.

			     ;; to press C-c q  or fill-paragraph ever again!
			     (visual-line-mode)
			     (org-indent-mode)
			     (variable-pitch-mode)))
;;(add-hook 'org-mode-hook 'auto-fill-mode)
;;(add-hook 'org-mode-hook 'org-indent-mode)

(straight-use-package 'elfeed)
(setq elfeed-feeds
      '("http://nullprogram.com/feed/"
        "https://planet.emacslife.com/atom.xml"
        "https://sachachua.com/blog/feed/"
        "https://www.globalissues.org/news/feed"
        "https://waitbutwhy.com/feed"
        "https://www.linuxlinks.com/feed/"
        "https://the-pirate-bay.ml/rss//top100/100"
        "https://the-pirate-bay.ml/rss//top100/200"
	"https://yts.mx/rss/0/1080p/all/0/en"))

(electric-pair-mode 1)
(electric-quote-mode 1)

(straight-use-package 'theme-magic)

;; This file is for loading different emacs completion frameworks
(straight-use-package 'marginalia)
(marginalia-mode 1)

;; Enable vertico
(straight-use-package 'vertico)
(vertico-mode 1)

(straight-use-package 'consult)
(recentf-mode 1)

(straight-use-package 'swiper)

(straight-use-package 'pdf-tools)
(pdf-tools-install)

(straight-use-package 'vterm)

(straight-use-package 'bongo)

(straight-use-package 'magit)
