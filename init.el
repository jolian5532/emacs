;;ignore warnings
(setq warning-suppress-types '((:warning)))

;; no startup screen
(setq inhibit-startup-screen t)

;; melpa & use-package
(require 'package)
(add-to-list 'package-archives '("melpa" . "https://melpa.org/packages/") t)
(package-initialize)

(unless (package-installed-p 'use-package)
  (package-refresh-contents)
  (package-install 'use-package))
(require 'use-package)

;; line numbering
(setq display-line-numbers-type 'relative)
(global-display-line-numbers-mode 1)

;; menu and scroll
(menu-bar-mode -1)  
(tool-bar-mode -1)
(scroll-bar-mode -1)

;; theme
(use-package kaolin-themes
  :ensure t
  :config
  (load-theme 'kaolin-valley-light t))

;; font 
(set-face-attribute 'default nil :font "Iosevka 16")

;; flyspell
(add-hook 'text-mode-hook 'flyspell-mode)
(add-hook 'prog-mode-hook 'flyspell-prog-mode)
(add-hook 'latex-mode-hook 'flyspell-mode)

;; ido
(ido-mode 1)

;; smex
(use-package smex
  :ensure t
  :bind (("M-x" . smex)
	 ("M-X" . smex-major-mode-commands))
  )

(custom-set-variables
 ;; custom-set-variables was added by Custom.
 ;; If you edit it by hand, you could mess it up, so be careful.
 ;; Your init file should contain only one such instance.
 ;; If there is more than one, they won't work right.
 '(package-selected-packages '(smex use-package kaolin-themes)))
(custom-set-faces
 ;; custom-set-faces was added by Custom.
 ;; If you edit it by hand, you could mess it up, so be careful.
 ;; Your init file should contain only one such instance.
 ;; If there is more than one, they won't work right.
 )
