;; This contains the UI configuration for Emacs.

(setq inhibit-startup-message t)

(scroll-bar-mode -1) ; Disable visible scrollbar.
(tool-bar-mode -1)   ; Disable the toolbar.
(tooltip-mode -1)    ; Disable the tooltips.
(set-fringe-mode 10) ; Give some breathing room.

;; (setq visible-bell t)
(load-theme 'wombat)

(load "font.el")
