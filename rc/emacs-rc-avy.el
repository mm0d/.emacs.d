;;; emacs-rc-avy.el ---

(require 'avy)

(avy-setup-default)
(setq avy-background t)
(setq avy-styles-alist '((avy-goto-char-2 . at-full)))

(global-set-key (kbd "C-'")  'avy-goto-char)
(global-set-key (kbd "C-\"") 'avy-goto-word-or-subword-1)
(global-set-key (kbd "M-g g") 'avy-goto-line)

;;; emacs-rc-avy.el ends here
