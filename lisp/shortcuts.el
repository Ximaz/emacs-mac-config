;;
;; XIMAZ CUSTOM EMACS, 2022
;; custom-emacs
;; File description:
;; global emacs configuration
;;

(defun buffer-exists (bufname) (not (eq nil (get-buffer bufname))))

;; Some function that will get binded to keys
(defun pop-the-shell ()
  "This function will, once called, pop a shell to a new bottom window."
  (interactive)
  (if (buffer-exists "*eshell*")
      (delete-windows-on "*eshell*"))
  ;; (let ((w (split-window-below 28)))
  ;;   (select-window w)
  ;;       (shell))
  ;; (switch-to-buffer w)
  (split-window-below -8)
  (select-window (next-window))
  (eshell))

(defun close-eshell-window ()
  "This function will, once exit signal is sent to eshell, close all it's windows."
  (if (buffer-exists "*eshell*")
      (delete-windows-on "*eshell*")))

(add-hook 'eshell-exit-hook #'close-eshell-window)


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
(global-set-key (kbd "M-j") 'pop-the-shell)
