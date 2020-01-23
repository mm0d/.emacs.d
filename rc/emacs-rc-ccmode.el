;;; emacs-rc-ccmode.el --- 

(require 'cc-mode)
(require 'eassist)

;;(require 'imenu)

;; customisation of cc-mode
(defun my-c-mode-common-hook ()
  ;; style customization
  ;;(c-set-offset 'member-init-intro '++)
  ;;(setq tab-width 8)
  ;;(setq	indent-tabs-mode t)
  ;;(c-set-offset 'substatement-open 0)

  ;;------------
  ;;my new
  (google-set-c-style)
  (global-set-key [f8] 'recompile)
  (setq compilation-window-height 20)
  (setq compilation-scroll-output 1)

  ;; (add-to-list  'c++-font-lock-extra-types "\\bwx[A-Z][a-z][a-zA-Z]*?\\b")
  ;; (c-set-offset 'topmost-intro-cont 'c-wx-lineup-topmost-intro-cont)
  ;;------------

  ;; local keys
  ;; (local-set-key [delete]  'delete-char)
  ;; (local-set-key [return] 'newline-and-indent)
  (local-set-key (kbd "M-[") 'eassist-switch-h-cpp)
  (local-set-key (kbd "M-]") 'eassist-list-methods)

  (define-key c-mode-base-map "\C-m" 'newline-and-indent)

  (define-key c++-mode-map "\"" 'electric-pair)
  (define-key c++-mode-map "\'" 'electric-pair)
  (define-key c++-mode-map "(" 'electric-pair)
  (define-key c++-mode-map "[" 'electric-pair)
  (define-key c++-mode-map "{" 'electric-pair))

(add-hook 'c-mode-common-hook 'my-c-mode-common-hook)


;;; emacs-rc-cmode.el ends here
