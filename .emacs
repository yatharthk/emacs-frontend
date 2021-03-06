(custom-set-variables
 ;; custom-set-variables was added by Custom.
 ;; If you edit it by hand, you could mess it up, so be careful.
 ;; Your init file should contain only one such instance.
 ;; If there is more than one, they won't work right.
 '(ansi-color-names-vector
   ["#242424" "#e5786d" "#95e454" "#cae682" "#8ac6f2" "#333366" "#ccaa8f" "#f6f3e8"])
 '(custom-enabled-themes (quote (deeper-blue))))
(custom-set-faces
 ;; custom-set-faces was added by Custom.
 ;; If you edit it by hand, you could mess it up, so be careful.
 ;; Your init file should contain only one such instance.
 ;; If there is more than one, they won't work right.
 )

;; backup files directory
(setq backup-directory-alist `(("." . "~/.emacs.d/auto-save-list/")))

;; auto completion
(ac-config-default)

;; font setup
(add-to-list 'default-frame-alist
             '(font . "DejaVu Sans Mono-13"))

;; tabs setting
(setq tab-width 2)
(setq js-indent-level 2)
(setq js-indent-offset 2)
(setq load-path (cons "~/.emacs.d" load-path))

;; autoindent settings
(when (fboundp 'electric-indent-mode) (electric-indent-mode -1))
(ido-mode 1)
(require 'package)
(package-initialize)
(add-to-list 'package-archives
         '("melpa" . "http://melpa.milkbox.net/packages/") t)

;; jsx/html support
(require 'web-mode)
(add-to-list 'auto-mode-alist '("\\.html\\'" . web-mode))
(add-to-list 'auto-mode-alist '("\\.hbs\\'" . web-mode))
(add-to-list 'auto-mode-alist '("\\.js[x]?\\'" . web-mode))
(add-to-list 'auto-mode-alist '("\\.ts\\'" . web-mode))

(setq web-mode-content-types-alist
  '(("json" . "\\.api\\'")
    ("xml"  . "\\.api\\'")
    ("jsx"  . "\\.js[x]?\\'")))

(setq web-mode-markup-indent-offset 2)
(setq web-mode-code-indent-offset 2)
(setq web-mode-attr-indent-offset 2)
(setq-default indent-tabs-mode nil)

(load "~/.emacs.d/site-lisp/color-theme-g0sub.el")
(require 'color-theme-g0sub)
(color-theme-g0sub)

;; sass support
(require 'scss-mode)
(autoload 'scss-mode "scss-mode")
(add-to-list 'auto-mode-alist '("\\.scss\\'" . scss-mode))
(setq css-indent-level 2)
(setq css-indent-offset 2)

;; directory structure
(require 'direx)
(global-set-key (kbd "C-x C-j") 'direx:jump-to-directory)
