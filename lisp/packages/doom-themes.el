(require 'use-package)
(setq use-package-always-ensure t)
(use-package doom-themes
  :ensure t
  :config
  (setq doom-themes-enable-bold t    ; if nil, bold is universally disabled
        doom-themes-enable-italic t) ; if nil, italics is universally disabled
  (load-theme 'doom-palenight t)
  (doom-themes-visual-bell-config)
  )
