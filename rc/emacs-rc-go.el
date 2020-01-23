;;; emacs-rc-go.el --- 

(add-to-list 'load-path "~/.emacs.d/elpa/go-eldoc-20140608.1938")

(require 'go-mode)
(require 'go-eldoc)
(add-hook 'before-save-hook 'gofmt-before-save)


(add-hook 'go-mode-hook 'go-eldoc-setup)
(add-hook 'go-mode-hook 'company-mode)
(add-hook 'go-mode-hook
	'(lambda ()
	   (go-eldoc-setup)
	   (local-set-key (kbd "C-c C-r") 'go-remove-unused-imports)
	   (local-set-key (kbd "C-c C-f") 'gofmt)
	   (set (make-local-variable 'company-backends) '(company-go))
	   (company-mode)))

;;; emacs-rc-go.el ends here
