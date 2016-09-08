;; place this file in your ~/emacs.d/ directory
;; you must remove your ~/.emacs file first if you want emacs
;; to load ~/.emacs.d/init.el (this file)

;; saves with ~squiggly lines go somewhere else
;; (~/.saves/ directory)
(setq backup-directory-alist `(("." . "~/.saves")))

;; change compile command to "make"
;; (instead of "make -k")

(setq compile-command "make ")

;; map M-p key to recompile command
;; (saves time on compilation of C programs)
(global-set-key "\M-p" 'recompile)

;; custom ones for betty
;; (https://github.com/holbertonschool/Betty)
(setq-default indent-tabs-mode t)
(c-set-offset 'substatement 8)
(c-set-offset 'substatement-open 0)
(c-set-offset 'defun-block-intro 8)
(c-set-offset 'defun-open -8)
(c-set-offset 'statement-block-intro 8)

;; inhibit the start message
(setq inhibit-startup-message t)

;; remove the toolbar
(tool-bar-mode -1)

;; add MELPA
(require 'package)
(setq package-enable-at-startup nil)
(add-to-list 'package-archives
	     '("melpa" . "https://melpa.org/packages/"))

(package-initialize)

;; Bootstrap `use-package'
(unless (package-installed-p 'use-package)
	(package-refresh-contents)
	(package-install 'use-package))

(use-package try
	:ensure t)

(use-package which-key
	:ensure t 
	:config
	(which-key-mode))

;; (use-package org-bullets
;;   :ensure t
;;   :config
;;   (add-hook 'org-mode-hook (lambda () (org-bullets-mode 1))))

;; i-do mode
(setq ido-enable-flex-matching t)
(setq ido-everywhere t)
(ido-mode 1)

;; use ibuffers
(defalias 'list-buffers 'ibuffer)
;; (defalias 'list-buffers 'ibuffer-other-window)

; If you like a tabbar 
;(use-package tabbar
;  :ensure t
;  :config
;  (tabbar-mode 1))

(use-package ace-window
  :ensure t
  :init
  (progn
    (global-set-key [remap other-window] 'ace-window)
    (custom-set-faces
     '(aw-leading-char-face
       ((t (:inherit ace-jump-face-foreground :height 3.0))))) 
    ))
