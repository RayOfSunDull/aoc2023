(defun format-string (fmt &rest args)
  (with-output-to-string (output)
    (apply #'format (cons output (cons fmt args)))))
    ; this is a scuffed version of what could be called "list unpacking" for <args>

