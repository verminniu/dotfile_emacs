(require 'unicad)

(require 'setup-edit)

(require 'setup-c)

(require 'setup-cquery)

(require 'doxygen)

(require-package 'counsel-projectile)
(counsel-projectile-mode)

;; variables
;; set doxygen username
(setq user-full-name "verminniu")

;; proj no need add .o/.a
(setq projectile-globally-ignored-file-suffixes '(".o" ".a"))
(setq projectile-enable-caching t)


;; last setup key map
(require 'my-keymap)

(provide 'setup-my-conf)
