;;
;; XIMAZ CUSTOM EMACS, 2022
;; custom-emacs
;; File description:
;; autoload custom configuration on startup
;;

(add-to-list 'load-path "~/.emacs.d/lisp")

(load "pm.el")
(load "shortcuts.el")
(load "ui.el")
(load "epitech.el")
(load "backup.el")

(setq auto-save-default nil)
(custom-set-variables
 ;; custom-set-variables was added by Custom.
 ;; If you edit it by hand, you could mess it up, so be careful.
 ;; Your init file should contain only one such instance.
 ;; If there is more than one, they won't work right.
 '(ansi-color-faces-vector
   [default default default italic underline success warning error])
 '(ansi-color-names-vector
   ["#212526" "#ff4b4b" "#b4fa70" "#fce94f" "#729fcf" "#e090d7" "#8cc4ff" "#eeeeec"])
 '(cua-mode t nil (cua-base))
 '(custom-enabled-themes '(brin))
 '(custom-safe-themes
   '("9b59e147dbbde5e638ea1cde5ec0a358d5f269d27bd2b893a0947c4a867e14c1" default))
 '(package-selected-packages
   '(evil-collection magit evil-magit all-the-icons-dired all-the-icons sublime-themes helpful ivy-rich which-key rainbow-delimiters use-package doom-modeline counsel command-log-mode))
 '(show-paren-mode t))
(custom-set-faces
 ;; custom-set-faces was added by Custom.
 ;; If you edit it by hand, you could mess it up, so be careful.
 ;; Your init file should contain only one such instance.
 ;; If there is more than one, they won't work right.
 '(default ((t (:background nil)))))
