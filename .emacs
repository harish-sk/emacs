;; Remove the menu bar
(menu-bar-mode -1)

;; Remove the tool bar
(tool-bar-mode -1)

;; inhibit start up screen
(setq inhibit-splash-screen t)
(setq inhibit-startup-message t)

;; Set the font size here
(set-face-attribute 'default (selected-frame) :height 170)

;; Have 80 x 24
(add-to-list 'default-frame-alist '(height . 35))
(add-to-list 'default-frame-alist '(width . 85))

;; Transient Mark mode
(transient-mark-mode t)
(set-face-attribute 'region nil :background "#BBB")

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
(custom-set-variables
 ;; custom-set-variables was added by Custom.
 ;; If you edit it by hand, you could mess it up, so be careful.
 ;; Your init file should contain only one such instance.
 ;; If there is more than one, they won't work right.
 '(custom-safe-themes
   (quote
    ("a802c77b818597cc90e10d56e5b66945c57776f036482a033866f5f506257bca" "a27c00821ccfd5a78b01e4f35dc056706dd9ede09a8b90c6955ae6a390eb1c1e" default)))
 '(org-agenda-files (quote ("~/hsk/hsk.org")))
 '(org-babel-load-languages (quote ((C . t)))))
(custom-set-faces
 ;; custom-set-faces was added by Custom.
 ;; If you edit it by hand, you could mess it up, so be careful.
 ;; Your init file should contain only one such instance.
 ;; If there is more than one, they won't work right.
 )

;; Enable yassnippet
(require 'yasnippet)
(yas-global-mode 1)

;; org-bullet
(require 'org-bullets)
(add-hook 'org-mode-hook (lambda () (org-bullets-mode 1)))

;; Smart mode line
;; These two lines are just examples
(setq powerline-arrow-shape 'curve)
(setq powerline-default-separator-dir '(right . left))
;; These two lines you really need.
(setq sml/theme 'powerline)
(sml/setup)

;; Set the agenda key binding
(global-set-key (kbd "<f2>") 'org-agenda)

(autoload 'ledger-mode "ledger-mode" "A major mode for Ledger" t)
(add-to-list 'auto-mode-alist '("\\.ledger$" . ledger-mode))

(global-set-key (kbd "<f2>") 'org-agenda)
