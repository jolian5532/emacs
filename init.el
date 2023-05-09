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

(defun dark ()
  "load dark theme"
  (interactive)
  (load-theme 'kaolin-valley-dark t) )

(defun light ()
  "load light theme"
  (interactive)
  (load-theme 'kaolin-valley-light t)
  )

;; font 
(set-face-attribute 'default nil :font "Iosevka 16")

;; flyspell
(setq ispell-program-name "hunspell")
(setq ispell-really-hunspell t)
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

;; magit
(use-package magit
  :ensure t)

(custom-set-variables
 ;; custom-set-variables was added by Custom.
 ;; If you edit it by hand, you could mess it up, so be careful.
 ;; Your init file should contain only one such instance.
 ;; If there is more than one, they won't work right.
 '(custom-safe-themes
   '("249e100de137f516d56bcf2e98c1e3f9e1e8a6dce50726c974fa6838fbfcec6b" "11cc65061e0a5410d6489af42f1d0f0478dbd181a9660f81a692ddc5f948bf34" "e8567ee21a39c68dbf20e40d29a0f6c1c05681935a41e206f142ab83126153ca" "f00a605fb19cb258ad7e0d99c007f226f24d767d01bf31f3828ce6688cbdeb22" "c95813797eb70f520f9245b349ff087600e2bd211a681c7a5602d039c91a6428" "d516f1e3e5504c26b1123caa311476dc66d26d379539d12f9f4ed51f10629df3" "74e2ed63173b47d6dc9a82a9a8a6a9048d89760df18bc7033c5f91ff4d083e37" "3c7a784b90f7abebb213869a21e84da462c26a1fda7e5bd0ffebf6ba12dbd041" default))
 '(package-selected-packages '(magit smex use-package kaolin-themes)))
(custom-set-faces
 ;; custom-set-faces was added by Custom.
 ;; If you edit it by hand, you could mess it up, so be careful.
 ;; Your init file should contain only one such instance.
 ;; If there is more than one, they won't work right.
 )
