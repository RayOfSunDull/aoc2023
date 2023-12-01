(defparameter *srcdir* "src") ; sources for the scripts for each day
(defparameter *libdir* "lib") ; more generic functions that can be useful in several days
(defparameter *datdir* "dat") ; data for each day

(defmacro load-lib (lib-name)
  `(load ,(concatenate 'string
     *libdir* "/" lib-name ".lisp")))
