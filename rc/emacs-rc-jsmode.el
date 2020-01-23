;;--------------------------------------------------------------------
;; ;;js-mode
;; (autoload 'js2-mode "js2" nil t)
(add-to-list 'auto-mode-alist '("\\.js$" . js2-mode))
(add-hook 'js-mode-hook 'js2-minor-mode)

(add-to-list 'interpreter-mode-alist '("node" . js2-mode))
;; (setq js2-basic-offset 2)
;; (setq js2-use-font-lock-faces t)
;; (add-hook 'js2-mode-hook
;;           (function (lambda()
;;                       (c-set-style "stroustrup")
;;                       (setq comment-style 'indent)
;;                       (setq show-trailing-whitespace 't)
;;                       (linum-mode 't)
;;                       )))
