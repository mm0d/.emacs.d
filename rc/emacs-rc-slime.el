;;; SLIME 
(load (expand-file-name "~/quicklisp/slime-helper.el"))
(require 'inf-lisp)
(setq inferior-lisp-program "sbcl")
(setq inferior-lisp-buffer "*inferior-lisp*")
(setq slime-net-coding-system 'utf-8-unix)
(require 'slime)
(slime-setup)
(add-hook 'lisp-mode-hook 
          (lambda () 
            (slime-mode t)))

(add-hook 'inferior-lisp-mode-hook 
          (lambda () 
            (inferior-slime-mode t)))

(add-hook 'slime-mode-hook (lambda () (slime-autodoc-mode t)))

(eval-after-load "slime"
  '(progn
     (slime-setup '(slime-fancy slime-asdf slime-banner slime-fuzzy slime-repl slime-sbcl-exts))
     (setq slime-complete-symbol*-fancy t)
     (setq slime-complete-symbol-function 'slime-fuzzy-complete-symbol)
     (setq slime-autodoc-use-multiline-p t)
     (setq common-lisp-hyperspec-root "file:///usr/share/doc/HyperSpec/")
     (setq slime-sbcl-manual-root "file:///usr/share/doc/sbcl/html")))

(global-set-key [f5] 'slime)
(global-set-key (kbd "M-s M-s") 'slime-scratch)

(require 'hyperspec)
;; (require 'w3m)

(defun hyperspec-lookup (&optional symbol-name)
 (interactive)
 (let ((browse-url-browser-function 'w3m-browse-url))
   (if symbol-name
       (common-lisp-hyperspec symbol-name)
     (call-interactively 'common-lisp-hyperspec))))

;;; emacs-rc-slime.el ends here
