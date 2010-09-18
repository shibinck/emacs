;;; lunar-fruity-theme.el --- theme based on the fruity pygments style

;; Copyright (C) 2009  Sebastian Wiesner  <basti.wiesner@gmx.net>

;; This file is not part of GNU Emacs. It no longer depends on color-theme.

;; This is free software; you can redistribute it and/or modify it under
;; the terms of the GNU General Public License as published by the Free
;; Software Foundation; either version 2, or (at your option) any later
;; version.
;;
;; This is distributed in the hope that it will be useful, but WITHOUT
;; ANY WARRANTY; without even the implied warranty of MERCHANTABILITY or
;; FITNESS FOR A PARTICULAR PURPOSE.  See the GNU General Public License
;; for more details.
;;
;; You should have received a copy of the GNU General Public License
;; along with GNU Emacs; see the file COPYING.  If not, write to the
;; Free Software Foundation, Inc., 59 Temple Place - Suite 330, Boston,
;; MA 02111-1307, USA.


;;; Code:

(defun lunar-fruity-theme ()
  "lunars color theme"
  (interactive)
  ;; variables
  (setq list-matching-lines-buffer-name-face 'bold)
  ;; faces
  (dolist (element
       '((default
           ((t (:background "gray10" :height 95 :foreground "white"
                            :family "DejaVu Sans Mono"))))
         ;; mode-line
         (mode-line ((t (:background "dark gray" :foreground "black"))))
         ;; highlightings and marks in the buffer
         (highlight ((t (:background "gray20"))))
         (trailing-whitespace ((t (:background "yellow"))))
         ;; isearch
         (isearch ((t (:background "gold" :foreground "black"))))
         (isearch-lazy-highlight-face ((t (:inherit isearch))))
         ;; region
         (region ((t (:background "midnight blue"))))
         ;; font lock
         (font-lock-builtin-face ((t (:foreground "red"))))
         (font-lock-preprocessor-face ((t (:bold t))))
         (font-lock-comment-face ((t (:foreground "green4" :italic t))))
         (font-lock-doc-face ((t (:inherit font-lock-comment-face))))

         (font-lock-function-name-face ((t (:foreground "deep pink" :bold t))))
         (font-lock-constant-face ((t (:foreground "white"))))
         (font-lock-keyword-face ((t (:foreground "orange red" :bold t))))
         (font-lock-string-face ((t (:foreground "royal blue"))))
         (font-lock-type-face ((t (:foreground "white" :bold t))))
         (font-lock-variable-name-face ((t (:foreground "white"))))
         ;; python
         (py-XXX-tag-face ((t (:inherit font-lock-warning-face))))
         (py-builtins-face ((t (:inherit font-lock-builtin-face))))
         (py-decorators-face ((t (:inherit py-pseudo-keyword-face))))
         (py-pseudo-keyword-face ((t (:inherit font-lock-keyword-face
                                               :bold nil))))
         ;; org-mode
         (org-code ((t (:inherit font-lock-string-face))))
         ;; latex
         (font-latex-italic-face ((t (:foreground "white"))))
         (font-latex-bold-face ((t (:foreground "white"))))
         (font-latex-math-face ((t (:foreground "yellow"))))
         ;; xml
         (rng-error ((t (:foreground "yellow" :bold t))))
         ;; ReStructured Text
         (rst-level-1-face ((t (:inherit rst-level-2-face :italic nil))))
         (rst-level-2-face ((t (:inherit rst-level-3-face :italic t
                                         :bold t))))
         (rst-level-3-face ((t (:inherit rst-level-4-face :italic nil))))
         (rst-level-4-face ((t (:inherit rst-level-5-face))))
         (rst-level-5-face ((t (:inherit rst-level-6-face))))
         (rst-level-6-face ((t (:inherit default :foreground "yellow"
                                         :italic t))))
         ;; minibuffer
         (minibuffer-prompt ((t (:foreground "white"))))
         ;; ido
         (ido-subdir ((t (:foreground "yellow" :bold t))))
         ))
    (let ((face (car element))
      (spec (nth 1 element)))
      (unless (facep face)
        (make-face face))
      (face-spec-set face spec))))

(provide 'lunar-fruity-theme)

;;; lunar-fruity-theme.el ends here