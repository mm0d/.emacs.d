;;; emacs-rc-lisp.el --- 

(defun my-lisp-mode-hook ()
  (setq indent-tabs-mode t)
  (abbrev-mode 1)
  (auto-fill-mode 1)
  ;(turn-on-eldoc-mode)
  (local-set-key [return] 'newline-and-indent))

(add-hook 'lisp-mode-hook 'my-lisp-mode-hook)

(require 'info-look)
(info-lookup-add-help
 :mode 'lisp-mode
 :regexp "[^][()'\" \t\n]+"
 :ignore-case t
 :doc-spec '(("(ansicl)Symbol Index" nil nil nil)))


;;; emacs-rc-lisp.el ends here
