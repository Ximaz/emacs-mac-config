;;
;; XIMAZ CUSTOM EMACS, 2022
;; custom-emacs
;; File description:
;; global emacs configuration
;;

(defun shell-exists() (not (null (get-buffer "*eshell*"))))

(defun build-the-shell()
  (split-window-below -8)
  (select-window (next-window))
  (eshell))

(defun kill-shell-windows()
  (dolist (win (window-list))                                                                                  
    (when (string= (buffer-name (window-buffer win)) "*eshell*")                                          
      (delete-window win)                                                                                      
      (kill-buffer "*eshell*"))))

;; Some function that will get binded to keys
(defun pop-the-shell ()
  "This function will, once called, pop a shell to a new bottom window."
  (interactive)
  (if (shell-exists)
      (kill-shell-windows)
    (build-the-shell)
  ))

(defun close-eshell-window ()
  "This function will, once exit signal is sent to eshell, close all it's windows."
  (if (shell-exists)
      (kill-shell-windows)))

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
(global-set-key (kbd "M-<delete>") 'kill-word) ;; Must work for fn + M + <delete>
(global-set-key (kbd "M-f") 'swiper-isearch)

