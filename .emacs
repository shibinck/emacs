(setq inhibit-startup-message t)
(setq visible-cursor nil)
(menu-bar-mode 0)
(setq
 backup-by-copying t      ; don't clobber symlinks
 backup-directory-alist
 '(("." . "~/.saves"))    ; don't litter my fs tree
 delete-old-versions t
 kept-new-versions 6
 kept-old-versions 2
 version-control t)       ; use versioned backups

(setq x-select-enable-clipboard t)
(setq js-indent-level 4)
(setq interprogram-paste-function 'x-cut-buffer-or-selection-value)
(require 'color-theme)
(setq color-theme-is-global t)
(setq-default indent-tabs-mode nil)
(setq-default tab-width 4)
(if (fboundp 'tool-bar-mode) (tool-bar-mode -1))
(add-to-list 'load-path "~/.emacs.d/plugins")
(add-to-list 'load-path "~/.emacs.d/plugins/themes")

(load-library "color-theme-active")
(load-library "color-theme-awesome")
(load-library "color-theme-bespin")
(load-library "color-theme-blackboard")
(load-library "color-theme-chocolate-rain")
(load-library "color-theme-colorblind")
(load-library "color-theme-dark-vee")
(load-library "color-theme-dirac")
(load-library "color-theme-g0sub")
(load-library "color-theme-github")
(load-library "color-theme-hober2")
(load-library "color-theme-inkpot")
(load-library "color-theme-ir-black")
(load-library "color-theme-mac-classic")
(load-library "color-theme-merbivore")
(load-library "color-theme-python")
(load-library "color-theme-railscasts")
(load-library "color-theme-slate")
(load-library "color-theme-subdued")
(load-library "color-theme-sunburst")
(load-library "color-theme-tango-2")
(load-library "color-theme-tango")
(load-library "color-theme-tangosoft")
(load-library "color-theme-tangotango")
(load-library "color-theme-thunk1")
(load-library "color-theme-twilight")
(load-library "color-theme-vibrant-ink")
(load-library "color-theme-wombat")
(load-library "color-theme-zen-and-art")
(load-library "lunar-fruity-theme")
(load-library "tango-theme")
(load-library "twilight")
(load-library "zenburn")

(color-theme-zenburn)


(add-hook 'org-mode-hook 'turn-on-auto-fill)
(require 'pymacs)
(require 'auto-complete)
(require 'ido)
(pymacs-load "ropemacs" "rope-")
(ido-mode t)
(ido-everywhere t)
(global-auto-complete-mode t)
(ansi-color-for-comint-mode-on)
(bar-cursor-mode t)
(define-key ac-complete-mode-map "\C-n" 'ac-next)
(define-key ac-complete-mode-map "\C-p" 'ac-previous)
(define-key ac-complete-mode-map (kbd "<escape>")'ac-stop)
(column-number-mode t)
(timeclock-modeline-display)
(display-time-mode)
(setq auto-mode-alist (cons '("\\.zcml$" . nxml-mode) auto-mode-alist))
(setq auto-mode-alist (cons '("\\.css.dtml$" . css-mode) auto-mode-alist))


(custom-set-variables
  ;; custom-set-variables was added by Custom.
  ;; If you edit it by hand, you could mess it up, so be careful.
  ;; Your init file should contain only one such instance.
  ;; If there is more than one, they won't work right.
 '(blink-cursor-mode nil)
 '(column-number-mode t)
 '(cua-mode t nil (cua-base))
 '(display-time-mode t)
 '(ecb-options-version "2.32")
 '(js2-basic-offset 4)
 '(js2-enter-indents-newline t)
 '(js2-highlight-level 3)
 '(js2-indent-on-enter-key t)
 '(js2-mirror-mode t)
 '(org-agenda-files (quote ("~/org/freelance.org" "~/org/work.org" "~/org/life.org")))
 '(scroll-bar-mode (quote right))
 '(tooltip-mode nil))



;; chocolate-rain
;; '(ac-candidate-face ((t (:background "#211612" :foreground "#c3be98"))))
;; '(ac-selection-face ((t (:background "#413632" :foreground "white")))))


(custom-set-faces
  ;; custom-set-faces was added by Custom.
  ;; If you edit it by hand, you could mess it up, so be careful.
  ;; Your init file should contain only one such instance.
  ;; If there is more than one, they won't work right.
 '(default ((t (:inherit nil :stipple nil :background "#141414" :foreground "#F8F8F8" :inverse-video nil :box nil :strike-through nil :overline nil :underline nil :slant normal :weight normal :height 98 :width normal :foundry "unknown" :family "Consolas"))))
 '(ac-candidate-face ((t (:background "#333333" :foreground "#EEEEEE"))))
 '(ac-selection-face ((t (:background "#555555" :foreground "white")))))

