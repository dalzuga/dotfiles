;; i-do mode

(setq ido-enable-flex-matching t)
(setq ido-everywhere t)
(ido-mode 1)

;; list buffers

(defalias 'list-buffers 'ibuffer)

;; custom ones for betty

(setq backup-directory-alist `(("." . "~/.saves")))
(setq compile-command "make ")
(global-set-key "\M-p" 'recompile)
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
