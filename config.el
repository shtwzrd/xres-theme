;;;###autoload
(when load-file-name
  (add-to-list 'custom-theme-load-path "~/.emacs.d/private/xres-theme/"))

;; preserve transparency of bg in terminals
(defun xres-theme/init-xres-theme ()
  (defun on-after-init ()
  (unless (display-graphic-p (selected-frame))
    (set-face-background 'default "unspecified-bg" (selected-frame))))
(add-hook 'window-setup-hook 'on-after-init)
)
