(require 'use-package)
(setq use-package-always-ensure t)
(use-package rainbow-delimiters
  :hook (prog-mode . rainbow-delimiters-mode))
