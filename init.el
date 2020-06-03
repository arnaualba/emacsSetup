;; Get environment variables
(exec-path-from-shell-initialize)

;; Added by Package.el.  This must come before configurations of
;; installed packages.  Don't delete this line.  If you don't want it,
;; just comment it out by adding a semicolon to the start of the line.
;; You may delete these explanatory comments.
(package-initialize)
(add-to-list 'package-archives '("melpa" . "https://melpa.org/packages/") t)

;; No bars
(show-paren-mode 1)
(which-function-mode 1)
(menu-bar-mode -1)
(if (display-graphic-p)
    (progn
      (tool-bar-mode -1)
      (scroll-bar-mode -1)))
(set-fringe-mode 0)

;; Key bindings
;; (global-set-key "\M--" 'hippie-expand)
;; (local-set-key "\M--" 'hippie-expand)
(global-set-key "\M--" 'dabbrev-expand)
(local-set-key "\M--" 'dabbrev-expand)

;; Save all backups in one directory                        
(setq backup-directory-alist '(("." . "~/emacsBackups")))

;; Such that shell opens in current window when it is called
(push (cons "\\*shell\\*" display-buffer--same-window-action) display-buffer-alist)

; Remove new line at end of file when saving
(setq mode-require-final-newline nil)

; Autmatically start flyspell in latex mode
(add-hook 'LaTeX-mode-hook 'flyspell-mode) ;start flyspell-mode
(setq ispell-dictionary "british")    ;set the default dictionary
(add-hook 'LaTeX-mode-hook 'ispell)   ;start ispell

; Open shell on startup
;(setq inhibit-startup-message t initial-buffer-choice 'shell)

(custom-set-variables
 ;; custom-set-variables was added by Custom.
 ;; If you edit it by hand, you could mess it up, so be careful.
 ;; Your init file should contain only one such instance.
 ;; If there is more than one, they won't work right.
 '(ansi-color-faces-vector
   [default default default italic underline success warning error])
 '(ansi-color-names-vector
   ["black" "red3" "ForestGreen" "yellow3" "blue" "magenta3" "DeepSkyBlue" "gray50"])
 '(custom-enabled-themes '(wheatgrass))
 '(ediff-window-setup-function 'ediff-setup-windows-plain)
 '(ein:slice-image t)
 '(ein:worksheet-enable-undo t)
 '(exec-path-from-shell-check-startup-files t)
 '(package-selected-packages '(jedi ein exec-path-from-shell)))

(custom-set-faces
 ;; custom-set-faces was added by Custom.
 ;; If you edit it by hand, you could mess it up, so be careful.
 ;; Your init file should contain only one such instance.
 ;; If there is more than one, they won't work right.
 )


;; Indent 4 spaces
(setq-default indent-tabs-mode nil)
(setq-default tab-width 4)
(setq indent-line-function 'insert-tab)