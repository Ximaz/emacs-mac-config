(require 'use-package)
(setq use-package-always-ensure t)
(use-package all-the-icons-dired
  :if (display-graphic-p)
  :hook (dired-mode . all-the-icons-dired-mode))
