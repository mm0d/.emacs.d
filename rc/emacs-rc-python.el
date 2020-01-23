;;; emacs-rc-python.el --- 

(defun electric-pair ()
	"Insert character pair without sournding spaces"
	(interactive)
	(let (parens-require-spaces)
		(insert-pair)))

(defun my-python-mode-hook ()
	;;(setq tab-width 4)
	;;(setq indent-tabs-mode nil)
	(setq python-indent-offset 4)
	(use-package elpy
	  :ensure t
	  :init
	  (elpy-enable))

	;; (setq python-shell-interpreter "ipython2"
	;; 	python-shell-interpreter-args "-i --simple-prompt")

	;; (require 'jedi)
	;; (setq jedi:server-command
	;; 	(list "python2" jedi:server-script))

	;; (jedi:setup)
	;; (jedi:ac-setup)
	;; (setq jedi:complete-on-dot t)                 ; optional

	;; (auto-fill-mode 1)
	;; (eldoc-mode 1)

	(setq comment-style 'indent)
	(setq show-trailing-whitespace 't)
	(linum-mode 't)

	;;(local-set-key [return] 'newline-and-indent)
	;; (define-key c-mode-base-map "\C-m" 'newline-and-indent)
	;; (define-key py-mode-map "\"" 'electric-pair)
	;; (define-key py-mode-map "\'" 'electric-pair)
	;; (define-key py-mode-map "(" 'electric-pair)
	;; (define-key py-mode-map "[" 'electric-pair)
	;; (define-key py-mode-map "{" 'electric-pair)
	)

(add-hook 'python-mode-hook 'my-python-mode-hook)
;; (add-hook 'python-mode-hook 'jedi:setup)
;; (add-hook 'python-mode-hook 'jedi:ac-setup)
;;(add-hook 'python-mode-hook 'flyspell-prog-mode)

;;; emacs-rc-python.el ends here
