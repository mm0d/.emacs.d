;;; emacs-rc-dart.el ---

(require 'dart-mode)

(setq dart-format-on-save t)

(add-to-list 'auto-mode-alist '("\\.dart\\'" . dart-mode))

;;; emacs-rc-dart.el ends here
