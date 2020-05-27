;;This file does not require executing 'doom sync' after modifiying.
;; This is my custom configuration file for Doom Emacs.
;; ~/.doom.d/config.el
;;
;;     ___
;;    /   \ ___  _ __   _ __   _   _  ___   /\/\
;;   / /\ // _ \| '_ \ | '_ \ | | | |/ __| /    \
;;  / /_//|  __/| | | || | | || |_| |\__ \/ /\/\ \
;; /___,'  \___||_| |_||_| |_| \__, ||___/\/    \/
;;                             |___/
;; Dennys M. (bardsnight)
;; https://bardsnight.github.io/dennysm/


(setq user-full-name "Dennys Marcos"
      user-mail-address "kardeenx@gmail.com")

;; Doom appearance configuration
(setq
    doom-font (font-spec :family "FantasqueSansMono NF" :size 18)
    doom-big-font (font-spec :family "FantasqueSansMono NF" :size 36)
    projectile-project-search-path '("~/dev/") ;; Default projects folder for projectile to search on
    doom-theme 'doom-one ;; Sets up my chosen theme
    display-line-numbers-type t ;; I have no clue maybe i'll search later
    )


(use-package! org-super-agenda
  :after org-agenda
  :init
  org-super-agenda-groups '((:name "Today"
                             :time-grid t
                             :scheduled today)
                            (:name "Due today"
                             :deadline today)
                            (:name "Important"
                             :priority "A")
                            (:name "Overdue"
                             :deadline past)
                            (:name "Due soon"
                             :deadline future)
                            (:name "Big Outcomes"
                             :tag "bo"))
  :config
  )

;; Org-mode settings
(after! org
  (setq org-fancy-priorities-list '("⚡" "⬆" "⬇" "☕")
        org-directory "~/.myorg/"
        org-bullets-bullet-list '("·:")

        org-log-done 'time
        org-ellipsis " ▾ "
        )
  )


(add-to-list 'default-frame-alist '(fullscreen . maximized)) ;; Initializes emacs maximized
;;
;;(setq display-line-numbers-type t)
;; There are two ways to load a theme. Both assume the theme is installed and
;; available. You can either set `doom-theme' or manually load a theme with the
;; `load-theme' function. This is the default:

;; If you use `org' and don't want your org files in the default location below,
;; change `org-directory'. It must be set before org loads!

;;(setq doom-theme 'doom-one)
;; This determines the style of line numbers in effect. If set to `nil', line
;; numbers are disabled. For relative line numbers, set this to `relative'.
;;
;;
;; Sets projectile search by default
;;(setq org-directory "~/.myorg/")
;;projectile-project-search-path '("~/dev/")
;; Here are some additional functions/macros that could help you configure Doom:
;;
;; - `load!' for loading external *.el files relative to this one
;; - `use-package' for configuring packages
;; - `after!' for running code after a package has loaded
;; - `add-load-path!' for adding directories to the `load-path', relative to
;;   this file. Emacs searches the `load-path' when you load packages with
;;   `require' or `use-package'.
;; - `map!' for binding new keys
;;
;; To get information about any of these functions/macros, move the cursor over
;; the highlighted symbol at press 'K' (non-evil users must press 'C-c g k').
;; This will open documentation for it, including demos of how they are used.
;;
;; You can also try 'gd' (or 'C-c g d') to jump to their definition and see how
;; they are implemented.

;
;; If you use `org' and don't want your org files in the default location below,; If you use `org' and don't want your org files in the default location below,
;;
;; Make doom initialize maximized:
