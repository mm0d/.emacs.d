(require 'lsp)
(require 'lsp-clients)
(require 'lsp-ui)

(define-key lsp-ui-mode-map [remap xref-find-definitions] #'lsp-ui-peek-find-definitions)
(define-key lsp-ui-mode-map [remap xref-find-references] #'lsp-ui-peek-find-references)

(add-hook 'lsp-mode-hook 'lsp-ui-mode)
(add-hook 'c++-mode-hook 'lsp)
(add-hook 'js2-mode-hook 'lsp)
(add-hook 'dart-mode-hook 'lsp)
