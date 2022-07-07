;;
;; XIMAZ CUSTOM EMACS, 2022
;; custom-emacs
;; File description:
;; autoload custom configuration on startup
;;

(add-to-list 'load-path "~/.emacs.d/lisp")

(load "ui.el")
(load "pm.el")
(load "shortcuts.el")
(load "epitech.el")
(load "backup.el")

(setq auto-save-default nil)
