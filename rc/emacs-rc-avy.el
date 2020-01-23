(use-package avy
	:ensure t
	:init (avy-setup-default)
	:config (progn
	;; Makes it easier to see the candidates
	(setq avy-background t)
	;; Shows both the candidates over the text
	(setq avy-styles-alist '((avy-goto-char-2 . at-full))))
	:bind (
	("C-'" . avy-goto-char)
	;; ("C-'" . avy-goto-char-2)
	("C-\"" . avy-goto-word-or-subword-1)
	;; ("M-g M-g" . avy-goto-line)
	("M-g g" . avy-goto-line)))
