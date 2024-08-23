(column-number-mode 1)
(setq-default indent-tabs-mode nil)
(add-to-list 'custom-theme-load-path "~/.emacs.d/themes/")
(load-theme 'naysayer t)
(setq-default tab-width 4)
(require 'package)
(add-to-list 'package-archives
             '("melpa" . "https://melpa.org/packages/") t)
(package-initialize)
(custom-set-variables
 ;; custom-set-variables was added by Custom.
 ;; If you edit it by hand, you could mess it up, so be careful.
 ;; Your init file should contain only one such instance.
 ;; If there is more than one, they won't work right.
 '(inhibit-startup-screen t)
 '(package-selected-packages
   (quote
    (protobuf-mode evil feature-mode typescript-mode disable-mouse tabbar ## glsl-mode gle-mode erlang dockerfile-mode yaml-mode ace-flyspell scala-mode cobol-mode cobalt php-mode ein go-mode rust-mode))))
;; (global-set-key (kbd "<C-tab>") 'tabbar-forward)
;; (global-set-key (kbd "<C-S-tab>") 'tabbar-backward)
(global-set-key (kbd "C-'") 'eval-buffer)
(global-set-key (kbd "C-\"") 'view-echo-area-messages)

;;(setq gofmt-command "goimports")
;;
(setq gofmt-command "gofumpt")
(add-hook 'before-save-hook #'gofmt-before-save)
(custom-set-faces
 ;; custom-set-faces was added by Custom.
 ;; If you edit it by hand, you could mess it up, so be careful.
 ;; Your init file should contain only one such instance.
 ;; If there is more than one, they won't work right.
 )
;; (tabbar-mode)
(transient-mark-mode 0)
(add-to-list 'auto-mode-alist '("\\.fs\\'" . glsl-mode))
(add-to-list 'auto-mode-alist '("\\.vs\\'" . glsl-mode))

(set-default-font "-PfEd-DejaVu Sans Mono-normal-normal-normal-*-15-*-*-*-m-0-iso10646-1")

(tool-bar-mode -1)
(require 'disable-mouse)
(global-disable-mouse-mode)
