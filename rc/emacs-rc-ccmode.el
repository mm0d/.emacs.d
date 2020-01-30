;;; emacs-rc-ccmode.el --- 

(require 'cc-mode)
;;(require 'imenu)

;; customisation of cc-mode
(defun my-c-mode-common-hook ()
  (google-set-c-style)
  (global-set-key [f8] 'recompile)
  (setq compilation-window-height 20)
  (setq compilation-scroll-output 1)

  (define-key c-mode-base-map "\M-[" 'ff-find-other-file)

  (define-key c-mode-base-map "\C-m" 'newline-and-indent)

  (define-key c++-mode-map "\"" 'electric-pair)
  (define-key c++-mode-map "\'" 'electric-pair)
  (define-key c++-mode-map "(" 'electric-pair)
  (define-key c++-mode-map "[" 'electric-pair)
  (define-key c++-mode-map "{" 'electric-pair))

(add-hook 'c-mode-common-hook 'my-c-mode-common-hook)


;;; emacs-rc-cmode.el ends here
