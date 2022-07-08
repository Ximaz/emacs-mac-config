(require 'use-package)
(setq use-package-always-ensure t)
(use-package magit
  :custom (magit-display-buffer-function #'magit-display-buffer-same-window-except-diff-v1))

