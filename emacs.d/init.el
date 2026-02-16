;; bindings

;; C-x C-f -> create a file
;; C-x C-s -> save file
;; C-f -> jump a letter
;; c-b -> back a letter
;; M-f -> jump a word
;; M-b -> back a word
;; C-a -> jump to the beginning of the line
;; C-e -> jump to the end of the line
;; M-> or M<- -> jump to the begin or end of the file
;; C-spc -> select text
;;   M-w -> copy the part
;;   C-w -> cut the text
;;   C-y -> past the text
;;   C-x-u -> undo
;;   C-s -> search string
;;   C-r -> search reserve
;; M-x replace-string -> replace string in the text
;; c-spc + M -> move text
;; C-x <number> -> create new buffers
;; C-x o -> move between buffers
;;

(setq package-archives
	  '(("GNU ELPA"     . "https://elpa.gnu.org/packages/")
		("MELPA"        . "https://melpa.org/packages/")
		("ORG"          . "https://orgmode.org/elpa/")
		("MELPA Stable" . "https://stable.melpa.org/packages/")
		("nongnu"       . "https://elpa.nongnu.org/nongnu/"))
	  package-archive-priorities
	  '(("GNU ELPA"     . 20)
		("MELPA"        . 15)
		("ORG"          . 10)
		("MELPA Stable" . 5)
		("nongnu"       . 0)))

(package-initialize)

(setq make-backup-files nil) ;; disable backup

(setq tool-bar-mode     0    ;; Remove toolbar
      scroll-bar-mode   0    ;; Remove scollbars
      menu-bar-mode     0    ;; Remove menu bar
      blink-cursor-mode 0)   ;; Solid cursor, not blinking

(when (member "Roboto Mono" (font-family-list))
  (set-face-attribute 'default nil :font "Roboto Mono" :height 108)
  (set-face-attribute 'fixed-pitch nil :family "Roboto Mono"))

(when (member "Source Sans Pro" (font-family-list))
  (set-face-attribute 'variable-pitch nil :family "Source Sans Pro" :height 1.18))

(require' gruvbox-theme)    ;; Make sure gruvbox-themes are installed
(load-theme 'gruvbox-dark-hard t) ;; Load the gruvbox-nord theme

(add-hook 'prog-mode-hook 'display-line-numbers-mode)

(use-package terraform-mode
  :custom (terraform-indent-level 2)
  :custom (terraform-format-on-save t)
  :config
  (defun my-terraform-mode-init ()
    ;; if you want to use outline-minor-mode
    ;; (outline-minor-mode 1)
    )

  (add-hook 'terraform-mode-hook 'my-terraform-mode-init))
(custom-set-variables
 ;; custom-set-variables was added by Custom.
 ;; If you edit it by hand, you could mess it up, so be careful.
 ;; Your init file should contain only one such instance.
 ;; If there is more than one, they won't work right.
 '(package-selected-packages '(gruvbox-theme terraform-mode)))
(custom-set-faces
 ;; custom-set-faces was added by Custom.
 ;; If you edit it by hand, you could mess it up, so be careful.
 ;; Your init file should contain only one such instance.
 ;; If there is more than one, they won't work right.
 )
