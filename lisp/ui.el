;; This contains the UI configuration for Emacs.

(setq inhibit-startup-message t)

(scroll-bar-mode -1) ; Disable visible scrollbar.
(tool-bar-mode -1)   ; Disable the toolbar.
(tooltip-mode -1)    ; Disable the tooltips.
(set-fringe-mode 10) ; Give some breathing room.

;; (setq visible-bell t)
(load-theme 'wombat)

(load "font.el")

;; Adds line numbers at the left of the buffer.
(column-number-mode)
(global-display-line-numbers-mode t)

;; Disable line numbers for some modes.
(dolist (mode '(ord-mode-hook
                term-mode-hook
                shell-mode-hook
                eshell-mode-hook))
  (add-hook mode (lambda () (display-line-numbers-mode 0))))
