(load "config.lisp")
(load-lib "string")

(defun open-dat (day problem)
  (open (format-string "~d/day-~d-~d.txt" *datdir* day problem)
    :if-does-not-exist nil))

; one day I'll figure out how to do this
; (defmacro read-lines-from (stream line-var &rest commands)
;   (when stream
;     `(loop for line-var = (read-line ,stream nil) while line-var do
;       ,@commands))))
