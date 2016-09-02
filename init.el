;; place this file in your ~/emacs.d/ directory
;; you must remove your ~/.emacs file first if you want emacs
;; to load ~/.emacs.d/init.el (this file)

;; i-do mode

(setq ido-enable-flex-matching t)
(setq ido-everywhere t)
(ido-mode 1)

;; list buffers

(defalias 'list-buffers 'ibuffer)

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

;; promotes background usage

(add-hook 'kill-emacs-hook
          (lambda () (or (y-or-n-p "Are you sure you don't mean suspend? ")
                         (error "Quit canceled"))))
(add-hook 'suspend-resume-hook (lambda () (message "Resumed!")
                                 (sit-for 2)))
