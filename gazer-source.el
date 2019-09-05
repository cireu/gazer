;;; -*- lexical-binding: t; -*-

(require 'cl-lib)
(require 'eieio)
(require 'gazer-utils)
(require 'promise)

(cl-defstruct (gazer-candidate
                (:constructor gazer-make-candidate (display match real)))
  ""
  display match real)

;; (cl-defmethod gazer-)

(provide 'gazer-source)
;;; gazer-source.el ends here
