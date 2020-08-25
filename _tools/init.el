;; Include standard package management
(require 'package)
;; Add repositories
(add-to-list 'package-archives
             '("melpa" . "https://melpa.org/packages/")
	     '("elpy" . "https://jorgenschaefer.github.io/packages/"))
(add-to-list 'package-archives '("org" . "https://orgmode.org/elpa/") t)
(add-to-list 'package-archives '("gnu" . "https://elpa.gnu.org/packages/") t)
(add-to-list 'package-archives '("marmalade" . "https://marmalade-repo.org/packages/") t)

;; add directories
(add-to-list 'load-path "~/.emacs.d/elpa/")
(add-to-list 'load-path "~/.emacs.d/lisp/")

(package-initialize)

;; Make sure use-package is installed
(unless (package-installed-p 'use-package)
  (package-refresh-contents)
  (package-install 'use-package))

(eval-when-compile
  (require 'use-package))

;; Make sure shell path known (might be strange on OS X)
;; (exec-path-from-shell-initialize)

;; Load Org file with Settings
(use-package org
  :ensure t
  )
(use-package ob-tangle
  :ensure t
  )

;; Alter this if you want to place your settings elsewhere
(org-babel-load-file (expand-file-name "~/.emacs.d/settings.org"))
