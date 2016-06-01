;; Remove the menu bar
(menu-bar-mode -1)

;; Remove the tool bar
(tool-bar-mode -1)

;; inhibit start up screen
(setq inhibit-splash-screen t)
(setq inhibit-startup-message t)

;; enable ido mode
(require 'ido)
(ido-mode t)

;; Helm mode
(add-to-list 'load-path "/home/hsk/.emacs.d/aync/")
(add-to-list 'load-path "/home/hsk/.emacs.d/helm/")
(require 'helm-config)
(helm-mode 1)
(global-set-key (kbd "M-x") 'helm-M-x)

;; This is harish's .emacs config file
(when (>= emacs-major-version 24)
  (require 'package)
  (add-to-list
   'package-archives
   '("melpa" . "http://melpa.org/packages/")
   t)
  (package-initialize))
(org-babel-do-load-languages 'org-babel-load-languages '((C . t)))
(setq org-src-fontify-natively t)
