(load "~/.emacs.d/modules/base.el")

(setq start (current-time))

(qv/require faces)
(qv/require settings)
(qv/require elisp)
(qv/require keybindings)
(qv/require minibuffer)
(qv/require recenter)
(qv/require undotree)
(qv/require multicursors)

(qv/package doom-modeline)
(doom-modeline-mode)

(defun qv/load-window-manager ()
  (interactive)
  (qv/require exwm)
  (qv/require system)
  (qv/require activities)
  (qv/require echobar)
  (server-start))

(qv/hook emacs-lisp-mode-hook nil
  (qv/require terminal)
  (qv/require rainbow)
  (qv/require outline))

(qv/after dired)
(qv/after org)
(qv/after dired)
(qv/after helpful)
(qv/after magit)
(qv/after custom)
(qv/after eww)
(qv/after emms)
(qv/after rect rectangle)
(qv/after prog-mode programming)
(qv/after prog-mode outline)

(setq end (current-time))
(message "Loaded in %s Seconds"
         (/ (- (+ (* (expt 10 6) (nth 1 end)) (nth 2 end))
               (+ (* (expt 10 6) (nth 1 start)) (nth 2 start)))
            (float (expt 10 6))))
