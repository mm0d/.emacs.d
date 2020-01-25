;;; emacs-rc-macos.el --- 

(set-keyboard-coding-system nil)
(setq mac-option-modifier 'super)
(setq mac-command-modifier 'meta)

(setenv "PATH" (concat (getenv "PATH") ":/usr/local/bin"))
(setq exec-path (append exec-path '("/usr/local/bin")))

;;; emacs-rc-macos.el ends here
