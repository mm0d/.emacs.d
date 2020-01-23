;; -*- coding: utf-8 -*-

(setq mail-user-agent 'gnus-user-agent)
(setq-default bidi-display-reordering nil)
(setq redisplay-dont-pause t)


(if window-system
    (progn 
      ;; (global-hl-line-mode t)
      ;; (set-face-background 'hl-line "#4a4a4a")
      ;; (set-face-underline 'highlight nil)
      ;; (set-face-foreground 'hl-line nil)
	  (setq browse-url-generic-program "chromium"
		    browse-url-browser-function 'browse-url-generic))
  (progn
    (setq browse-url-browser-function 'w3m-browse-url)))


(push "~/.emacs.d/rc" load-path)
(push "~/.emacs.d/site-packages" load-path)
;;(load "~/.emacs.d/eassist.el")

(load "emacs-rc-packages.el")
(load "emacs-rc-helm.el")
(load "emacs-rc-lsp.el")
(load "emacs-rc-company.el")

(load "emacs-rc-avy.el")
(load "emacs-rc-info.el")
(load "emacs-rc-hunspell.el")
(load "emacs-rc-calendar.el")
(load "emacs-rc-lisp.el")
(load "emacs-rc-slime.el")
(load "emacs-rc-ccmode.el")
(load "emacs-rc-jsmode.el")
(load "emacs-rc-cmake.el")
(load "emacs-rc-gdb.el")


;; (load "emacs-rc-cedet-emb.el")
;; (load "emacs-rc-cedet.el")
;; (load-file "/usr/share/emacs/site-lisp/gtags.el")

(load "emacs-rc-git.el")
;; (load "emacs-rc-go.el")
(load "emacs-rc-python.el")
(load "emacs-rc-ediff.el")



;; (setq shell-file-name "/bin/zsh")
;; (setq sh-shell-file "/bin/zsh")
;; (setq shell-command-switch "-c")
;; (setq explicit-shell-file-name shell-file-name)
;; (setenv "SHELL" shell-file-name)
;; (setenv "SHELL" "/bin/bash")
;; (setq explicit-sh-args '("-ls" ))

;;------------------------------------------------------------
(setq-default require-final-newline t)

(setq-default font-lock-maximum-decoration t)
(global-font-lock-mode t)

(setq-default show-trailing-whitespace 'nil)
(blink-cursor-mode nil)
(setq-default transient-mark-mode t)


(fset 'yes-or-no-p 'y-or-n-p)

;;----------------------------------------
(setq-default split-width-threshold 250)
;;(setq-default split-height-threshold 80)
;;(setq split-window-preferred-function ')


;;------------------------------------------------------------
(defmacro when-available (func foo)
  "*Do something if FUNCTION is available."
  `(when (fboundp ,func) ,foo))
;;------------------------------------------------------------
(load-theme 'wombat t)
(setq default-frame-alist '((cursor-color . "gold")))

;;(setq whitespace-silent t)

;; Enable dynamic highlighting
(if (functionp 'global-hi-lock-mode)
    (global-hi-lock-mode 1)
  (hi-lock-mode 1))

(setq inhibit-startup-message t)
(setq-default visible-bell t)

;;Delete the line with \n
;;(setq kill-whole-line t)

;; UTF-8------------------------------------------------------------
(set-language-environment 'UTF-8)
(set-terminal-coding-system 'utf-8)
(set-keyboard-coding-system 'utf-8)
(setq x-select-request-type '(UTF8_STRING COMPOUND_TEXT TEXT STRING))
;; (codepage-setup 1251)
(define-coding-system-alias 'windows-1251 'cp1251)
;; (codepage-setup 866)
(prefer-coding-system 'cp866)
(prefer-coding-system 'koi8-r-unix)
(prefer-coding-system 'windows-1251-dos)
(prefer-coding-system 'utf-8-unix)
(setq default-input-method 'russian-computer)
(setq-default current-language-environment "UTF-8")
;;------------------------------------------------------------------


;; (require 'russian-utf8-env)
;; (set-language-environment "Russian UTF-8")
;;-------------------------------------------------------------------
;; the modeline

(line-number-mode t)
(column-number-mode t)
(when-available 'size-indication-mode 	  
		(size-indication-mode t))

;;-------------------------------------------------------------------
(if (fboundp 'tool-bar-mode) (tool-bar-mode -1))
(if (fboundp 'menu-bar-mode) (menu-bar-mode -1))
(if (fboundp 'scroll-bar-mode) (scroll-bar-mode -1))

;;------------------------------------------------------------------
;; make backup files in ~/.backups/ rather than scattered around all
;; over the filesystem.
(defun make-backup-file-name (file-name)
  "Create the non-numeric backup file name for `file-name'."
  (require 'dired)
  (if (file-exists-p "~/.emacs.tmp/backups")
      (concat (expand-file-name "~/.emacs.tmp/backups/")
              (dired-replace-in-string "/" "|" file-name))
    (concat file-name "~")))

;; disable backups for files in /tmp or /etc or /usr
(defun ecm-backup-enable-predicate (filename)
  (and (not (string= "/tmp/" (substring filename 0 5)))
       (not (string-match "/etc/" filename))
       (not (string-match "/usr/" filename))))


(setq backup-enable-predicate 'ecm-backup-enable-predicate)
;;-------------------------------------------------------------------

; This doesn't seem to work:
(setq auto-save-list-file-prefix (expand-file-name "~/.emacs.tmp/auto-save-lists/"))

(global-unset-key (kbd "C-z"))
(global-unset-key [(left)])
(global-unset-key [(right)])
(global-unset-key [(down)])
(global-unset-key [(up)])

(global-set-key [(XF86Forward)] 'next-buffer)
(global-set-key [(XF86Back)] 'previous-buffer)

;; (global-set-key [(XF86Launch9)] 'previous-buffer)


;; (global-set-key "\e\er" 'regexp-builder)
(global-set-key "\e\et" 'transpose-lines)

(global-set-key "\e\ec" 'calculator)
;; (global-set-key "\e\ei" 'indent-region) Use C-M-\ instead

(global-set-key (kbd "ESC M-SPC") 'set-rectangular-region-anchor)
(global-set-key (kbd "C-S-c C-S-c") 'mc/edit-lines)
(global-set-key (kbd "C->") 'mc/mark-next-like-this)
(global-set-key (kbd "C-<") 'mc/mark-previous-like-this)
(global-set-key (kbd "C-c C-<") 'mc/mark-all-like-this)

(setq tramp-default-method "ssh")
;;--------------------------------------------------------------------
;; Kill message buffer
;;(setq message-log-max nil)
;;(kill-buffer "*Messages*")
;;(kill-buffer "*Pymacs*")


;;--------------------------------------------------------------------
;; google-region
(defun google-region (&optional flags)
  "Google the selected region"
  (interactive)
  (let ((query (buffer-substring (region-beginning) (region-end))))
    (browse-url (concat "http://www.google.com/search?ie=utf-8&oe=utf-8&q=" query))))
;; press control-c g to google the selected region
(global-set-key (kbd "C-c g") 'google-region)

;;--------------------------------------------------------------------
(defun electric-pair ()
  "Insert character pair without sournding spaces"
  (interactive)
  (let (parens-require-spaces)
    (insert-pair)))

;; ----------------------------------------------
;; ----------------------------------------------
;;mic paren
;;(paren-activate)
;;(setq paren-sexp-mode 't)
(show-paren-mode t)
(setq show-paren-style 'expression) ;;can be parenthesis,expression or mixed
(setq paren-display-message 'only)
(setq paren-bind-modified-sexp-functions 'nil)
(set-face-background 'show-paren-match "#2e2e2e")
;;(set-face-background 'paren-match-face "gray70")


(put 'dired-find-alternate-file 'disabled nil)
