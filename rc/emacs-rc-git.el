;;; emacs-rc-git.el --- 

;(load "~/.emacs.tmp/egg/egg.el")
;(require 'egg)


;; (add-to-list 'load-path "~/.emacs.tmp/magit")
;; (require 'magit)
(autoload 'magit-status "magit" nil t)
(global-set-key "\C-cm" 'magit-status)
(custom-set-variables
 '(magit-save-some-buffers (quote dontask)))

;;; emacs-rc-git.el ends here
