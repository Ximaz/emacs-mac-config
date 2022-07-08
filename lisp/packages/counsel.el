(require 'use-package)
(setq use-package-always-ensure t)
(use-package counsel
  :bind (("M-x" . counsel-M-x)
         ("C-x b" . counsel-ibuffer)
         ("C-x C-f" . counsel-find-file)
         ("M-p" . counsel-switch-buffer)
         :map minibuffer-local-map
         ("C-r" . counsel-minibuffer-history)))
