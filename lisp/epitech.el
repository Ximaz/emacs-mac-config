;;
;; EPITECH PROJECT, 2018
;; epitech-emacs
;; File description:
;; global emacs configuration
;;

(set-variable 'c-argdecl-indent   0)

;; (normal-erase-is-backspace-mode 0)

;; Define keyboard shortcuts
;; (global-set-key (kbd "C-h") 'backward-delete-char)
(global-set-key (kbd "C-c C-c") 'compile)
(global-set-key (kbd "C-g") 'goto-line)

; Adjust indentation settings
(setq c-default-style "linux"
      c-basic-offset 4
      tab-width 4)
(setq tab-stop-list '(4 8 12 16 20 24 28 32 36 40 44 48 52 56 60 64 68 72 76 80))
(setq-default indent-tabs-mode nil)

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
 '(custom-enabled-themes '(misterioso))
 '(show-paren-mode t))

(setq mac-option-modifier nil
      mac-command-modifier 'meta
      x-select-enable-clipboard t)

;; STD COMMENT

(setq header-epitech     "EPITECH PROJECT, "
      header-description "File description:")

(setq std-c-alist               '( (cs . "/*") (cc . "** ") (ce . "*/") )
      std-css-alist             '( (cs . "/*") (cc . "** ") (ce . "*/") )
      std-cpp-alist             '( (cs . "/*") (cc . "** ") (ce . "*/") )
      std-pov-alist             '( (cs . "//") (cc . "// ") (ce . "//") )
      std-java-alist            '( (cs . "//") (cc . "// ") (ce . "//") )
      std-latex-alist           '( (cs . "%%") (cc . "%% ") (ce . "%%") )
      std-lisp-alist            '( (cs . ";;") (cc . ";; ") (ce . ";;") )
      std-xdefault-alist        '( (cs . "!!") (cc . "!! ") (ce . "!!") )
      std-pascal-alist          '( (cs . "{ ") (cc . "   ") (ce . "}" ) )
      std-makefile-alist        '( (cs . "##") (cc . "## ") (ce . "##") )
      std-text-alist            '( (cs . "##") (cc . "## ") (ce . "##") )
      std-fundamental-alist     '( (cs . "  ") (cc . "   ") (ce . "  ") )
      std-html-alist            '( (cs . "<!--") (cc . "  -- ") (ce . "-->") )
      std-php-alist             '( (cs . "#!/usr/bin/env php\n<?php\n/*") (cc . "** ") (ce . "*/") )
      std-nroff-alist           '( (cs . "\\\"") (cc . "\\\" ") (ce . "\\\"") )
      std-sscript-alist         '( (cs . "#!/usr/bin/env bash\n##")  (cc . "## ") (ce . "##") )
      std-perl-alist            '( (cs . "#!/usr/bin/env perl\n##")  (cc . "## ") (ce . "##") )
      std-cperl-alist           '( (cs . "#!/usr/bin/env perl\n##")  (cc . "## ") (ce . "##") )
      std-python-alist          '( (cs . "#!/usr/bin/env python3\n##") (cc . "## ") (ce . "##") )
      std-ruby-alist            '( (cs . "#!/usr/bin/env ruby\n##") (cc . "## ") (ce . "##") )
      std-node-alist            '( (cs . "#!/usr/bin/env node\n/*") (cc . "** ") (ce . "*/") )
      std-haskell-alist         '( (cs . "{-") (cc . "-- ") (ce . "-}") )
      )


(setq std-modes-alist '(("C"                    . std-c-alist)
                        ("C/l"                  . std-c-alist)
                        ("C/*l"                 . std-c-alist)
                        ("CSS"                  . std-c-alist)
                        ("PoV"                  . std-pov-alist)
                        ("C++"                  . std-cpp-alist)
                        ("C++/l"                . std-cpp-alist)
                        ("C++//l"               . std-cpp-alist)
                        ("Lisp"                 . std-lisp-alist)
                        ("Lisp Interaction"     . std-lisp-alist)
                        ("Emacs-Lisp"           . std-lisp-alist)
                        ("Fundamental"          . std-fundamental-alist)
                        ("Shell-script"         . std-sscript-alist)
                        ("Makefile"             . std-makefile-alist)
                        ("BSDmakefile"          . std-makefile-alist)
                        ("GNUmakefile"          . std-makefile-alist)
                        ("Perl"                 . std-cperl-alist)
                        ("CPerl"                . std-cperl-alist)
                        ("xdefault"             . std-xdefault-alist)
                        ("java"                 . std-java-alist)
                        ("latex"                . std-latex-alist)
                        ("Pascal"               . stdp-ascal-alist)
                        ("Text"                 . std-text-alist)
                        ("HTML"                 . std-html-alist)
                        ("PHP"                  . std-php-alist)
                        ("Nroff"                . std-nroff-alist)
                        ("TeX"                  . std-latex-alist)
                        ("LaTeX"                . std-latex-alist)
                        ("Python"               . std-python-alist)
                        ("Ruby"                 . std-ruby-alist)
                        ("JavaScript"           . std-node-alist)
                        ("Haskell"              . std-haskell-alist))
      )

(defun std-get (a)
  (interactive)
  (cdr (assoc a (eval (cdr (assoc mode-name std-modes-alist)))))
  )

(defun std-file-header ()
  "Puts a standard header at the beginning of the file.\n(According to mode)"
  (interactive)
  (goto-char (point-min))
  (let ((projname "toto")(projdescription "tiuti"))
    (setq projname (read-from-minibuffer
                    (format "Type project name (RETURN to confirm): ")))
    (setq projdescription (read-from-minibuffer
                    (format "Type short file description (RETURN to confirm): ")))

    (insert (std-get 'cs))
    (newline)
    (insert (concat (std-get 'cc)
                     header-epitech
                     (format-time-string "%Y")))
    (newline)
    (insert (concat (std-get 'cc)
                    projname))
    (newline)
    (insert (concat (std-get 'cc)
                    header-description))
    (newline)
    (insert (concat (std-get 'cc)
                    projdescription))
    (newline)
    (insert (std-get 'ce))
    (newline)
    (newline)))

(global-set-key (kbd "C-c C-h") 'std-file-header)

;;;; Generating local keymaps for exotics modes.

;;; In CPerl mode, C-c C-h is used to do some help.
;;; so it is C-c C-h h
;;; For working, it requires info pages about perl
(add-hook 'cperl-mode-hook
          '(lambda ()
             (define-key cperl-mode-map (kbd "C-c C-c")
               'comment-region)
             (define-key cperl-mode-map (kbd "C-c C-h h")
               'std-file-header)))

;; for perl-mode
(add-hook 'perl-mode-hook
          '(lambda ()
             (define-key perl-mode-map (kbd "C-c C-c")
               'comment-region)))

;; for all kind of lisp code
(add-hook 'emacs-lisp-mode-hook
           '(lambda ()
              (define-key emacs-lisp-mode-map (kbd "C-c C-c")
                'comment-region)))

(add-hook 'lisp-mode-hook
           '(lambda ()
              (define-key lisp-mode-map (kbd "C-c C-c")
                'comment-region)))



;; for La(TeX)-mode
(add-hook 'tex-mode-hook
          '(lambda ()
             (define-key tex-mode-map (kbd "C-c C-c")
               'comment-region)))
