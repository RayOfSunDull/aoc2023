(load "config.lisp")
(load-lib "io")


(defun get-calib (calib-string)
  (let ((numbers (loop for c across calib-string
         if (digit-char-p c) collect (digit-char-p c))))
    (+ (* 10 (first numbers)) (first (last numbers)))))

(defun main ()
  (let ((input (open-dat 1 1)))
    (when input ; common lisp's loops are truly insane
      (let ((result (loop for line = (read-line input nil) while line 
             sum (get-calib line))))
        (format t "~d~%" result)))
    (close input)))

