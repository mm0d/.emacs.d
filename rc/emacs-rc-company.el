(require 'company)
(add-hook 'after-init-hook 'global-company-mode)

(require 'company-lsp)
(push 'company-lsp company-backends)


