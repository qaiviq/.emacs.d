;;; Colors
(qv/set-colors
 fg     "#B0C0CC"
 bg     "#1B1F26"
 bg2    "#14161B"
 bg3    "#1F252E"
 gray1  "#98A8AC"
 gray2  "#7C8084"
 gray3  "#484B54"
 black  "#0E1216"
 red    "#D75F5F"
 yellow "#FFD75F"
 orange "#FFA500"
 green  "#40E040"
 cyan   "#5FFFD7"
 blue   "#5FAFD7"
 purple "#AF87D7")

(unless (display-graphic-p)
  (qv/set-colors
   bg "#000000"
   bg2 "#222222"
   bg3 "#000000"))

;;; Basic Faces
(when (display-graphic-p)
  (qv/face default :fg fg :bg bg :f "Iosevka" :w normal :h 64)
  (qv/face variable-pitch :f "Attractive" :h 1.0)
  (qv/face fixed-pitch :f "Iosevka" :w normal :h 1.0))

(qv/face region :bg gray3)
(qv/face highlight :fg "#EECC44" :bg nil :w bold :u "#EECC44" :e nil)
(qv/face shadow :fg gray2)
(qv/face link :fg blue)
(qv/face error :fg "#FF4444")

(qv/face line-number fixed-pitch :fg gray2 :h 0.9)
(qv/face line-number-current-line line-number :fg gray1 :w bold)

;;; Layout Faces
(qv/face mode-line :fg fg :bg bg2 :b nil :iv nil)
(qv/face mode-line-inactive :fg gray2 :bg bg2 :b nil :iv nil)
(qv/face fringe mode-line-inactive :bg nil)
(qv/face vertical-border fringe :iv t)

(qv/face doom-modeline-buffer-modified (error bold))

;;; Font Lock Faces
;; Purple and Blue
(qv/face font-lock-comment-face :fg gray2 :w bold :s italic)
(qv/face font-lock-string-face :fg green :s italic)
(qv/face font-lock-type-face :fg blue)
(qv/face font-lock-keyword-face :fg purple :w bold)
(qv/face font-lock-function-name-face :fg red)
(qv/face font-lock-variable-name-face :fg fg :s italic)
(qv/face font-lock-constant-face :fg blue)
(qv/face font-lock-builtin-face :fg blue)
(qv/face font-lock-doc-face font-lock-comment-face)

;; Superman Colors
;; (qv/face1 'font-lock-comment-face nil qv/gray2-color nil
;;          :weight 'bold
;;          :slant 'italic)
;; (qv/face1 'font-lock-string-face nil qv/green-color nil
;;          :slant 'italic)
;; (qv/face1 'font-lock-type-face nil qv/yellow-color nil)
;; (qv/face1 'font-lock-keyword-face nil qv/yellow-color nil)
;; (qv/face1 'font-lock-function-name-face nil qv/red-color nil)
;; (qv/face1 'font-lock-variable-name-face nil qv/red-color nil)
;; (qv/face1 'font-lock-constant-face nil qv/blue-color nil)
;; (qv/face1 'font-lock-builtin-face nil qv/blue-color nil)


;;; Global Font Size
(defun change-font-size (face increment)
  (set-face-attribute face nil :height
                      (+ (face-attribute face :height) increment)))

(qv/keys *
  "C-+" (change-font-size 'default +16)
  "C-_" (change-font-size 'default -16))
