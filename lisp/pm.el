;; Initialize package sources
(require 'package)

(setq package-archives '(("melpa" . "https://melpa.org/packages/")
                         ("org" . "https://orgmode.org/elpa/")
                         ("elpa" . "https://elpa.gnu.org/packages/")))

(package-initialize)
(unless package-archive-contents
 (package-refresh-contents))

;; Initialize use-package on non-Linux platforms
(unless (package-installed-p 'use-package)
   (package-install 'use-package))

(load "packages/doom-modeline.el")
(load "packages/doom-themes.el")
(load "packages/all-the-icons.el")
(load "packages/all-the-icons-dired.el")
(load "packages/rainbow-delimiters.el")
(load "packages/which-key.el")
(load "packages/helpful.el")
(load "packages/multiple-cursors.el")
(load "packages/counsel.el")
(load "packages/ivy.el")
(load "packages/ivy-rich.el")
(load "packages/magit.el")
(load "packages/wakatime.el")

(when (eq system-type 'darwin)
  (setq mac-command-modifier 'super))
