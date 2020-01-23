;;; emacs-rc-hunspell.el --- 

(setq ispell-local-dictionary-alist
    '(("russian"
       "[АБВГДЕЁЖЗИЙКЛМНОПРСТУФХЦЧШЩЬЫЪЭЮЯабвгдеёжзийклмнопрстуфхцчшщьыъэюя]"
       "[^АБВГДЕЁЖЗИЙКЛМНОПРСТУФХЦЧШЩЬЫЪЭЮЯабвгдеёжзийклмнопрстуфхцчшщьыъэюя]"
       "[-]"  nil ("-d" "ru_RU") nil utf-8)
      ("english"
       "[A-Za-z]" "[^A-Za-z]"
       "[']"  nil ("-d" "en_US") nil iso-8859-1)))

(setq ispell-really-aspell nil
      ispell-really-hunspell t)

(setq ispell-program-name "/usr/bin/hunspell")

;(autoload 'flyspell-mode "flyspell" "On-the-fly spelling checker." t)
(add-hook 'message-mode-hook 'turn-on-flyspell)
(add-hook 'text-mode-hook 'turn-on-flyspell)
(add-hook 'nxml-mode-hook 'turn-on-flyspell)
(add-hook 'texinfo-mode-hook 'turn-on-flyspell)
(add-hook 'TeX-mode-hook 'turn-on-flyspell)
(add-hook 'muse-mode-hook 'turn-on-flyspell)

;; (add-hook 'c-mode-common-hook 'flyspell-prog-mode)
;; (add-hook 'lisp-mode-hook 'flyspell-prog-mode)
;; (add-hook 'emacs-lisp-mode-hook 'flyspell-prog-mode)

;;; emacs-rc-ispell.el ends here
