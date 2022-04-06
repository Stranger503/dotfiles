(setq user-full-name "Mohammed Shahid"
      user-mail-address "shahid.xyz@yahoo.com")
(load! "bindings")
; (load! "./themes/plan9")
(set-mouse-color "gold1")

(add-hook 'compilation-mode-hook (lambda () (text-scale-increase 1.3)))


 ; (setq doom-font (font-spec :family "Courier Prime Code" :size 21)
 ;       doom-variable-pitch-font (font-spec :family "Courier Prime Code" :size 15))
; (add-hook 'compilation-mode-hook (lambda ()
 ;                            (setq buffer-face-mode-face '(:family "Courier Prime Code"))
 ;                            (buffer-face-mode)))

 (setq doom-font (font-spec :family "Iosevka" :size 21)
       doom-variable-pitch-font (font-spec :family "Iosevka" :size 15))
(add-hook 'compilation-mode-hook (lambda ()
                            (setq buffer-face-mode-face '(:family "Iosevka"))
                            (buffer-face-mode)))

 ; (setq doom-font (font-spec :family "Consolas NF" :size 19 )
 ;        doom-variable-pitch-font (font-spec :family "Consolas NF" :size 18))
; (add-hook 'compilation-mode-hook (lambda ()
 ;                            (setq buffer-face-mode-face '(:family "Consolas NF"))
 ;                            (buffer-face-mode)))


; (setq doom-theme 'gruber-darker)
(setq doom-theme 'warm-night)
; (setq doom-theme 'doom-zenburn)

;; This determines the style of line numbers in effect. If set to `nil', line
;; numbers are disabled. For relative line numbers, set this to `relative'.
(setq display-line-numbers-type t)

;; If you use `org' and don't want your org files in the default location below,
;; change `org-directory'. It must be set before org loads!
(setq org-directory "~/org/")

(setq org-hide-emphasis-markers t)
(font-lock-add-keywords 'org-mode
                            '(("^ +\\([-*]\\) "
                               (0 (prog1 () (compose-region (match-beginning 1) (match-end 1) "•"))))))
