;;
;; XIMAZ CUSTOM EMACS, 2022
;; custom-emacs
;; File description:
;; global emacs configuration
;;

;; Define keyboard shortcuts
(global-set-key (kbd "M-p") 'pop-to-buffer)
(global-set-key (kbd "M-o") 'find-file)
(global-set-key (kbd "M-z") 'undo)
(global-set-key (kbd "M-y") 'undo-redo)
(global-set-key (kbd "M-/") 'comment-line)
(global-set-key (kbd "M-w") 'delete-window)
(global-set-key (kbd "M-Z") 'recover-this-file)
(global-set-key (kbd "<escape>") 'keyboard-escape-quit)
(global-set-key (kbd "M-b") 'counsel-find-file)
