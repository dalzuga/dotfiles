(setq backup-directory-alist `(("." . "~/.saves")))
(c-set-offset 'substatement-open 0)
(add-hook 'kill-emacs-hook
          (lambda () (or (y-or-n-p "Are you sure you don't mean suspend? ")
                         (error "Quit canceled"))))
(add-hook 'suspend-resume-hook (lambda () (message "Resumed!")
                                 (sit-for 2)))
