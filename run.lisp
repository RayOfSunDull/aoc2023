(load "config.lisp")
(load-lib "string")

(defun run ()
  (destructuring-bind (_ day problem) sb-ext:*posix-argv*
    (let ((file-path
            (format-string "~d/day-~d-~d.lisp" *srcdir* day problem)))
      (load file-path)
      (main))))

(sb-ext:save-lisp-and-die "run"
  :executable t
  :toplevel 'run)
