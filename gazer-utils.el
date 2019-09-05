;;; -*- lexical-binding: t; -*-

(require 'cl-lib)
(require 'pcase)

(defmacro gazer-aif (cond then &rest else)
  (declare (indent 2) (debug t))
  (macroexp-let2 nil cond cond
    `(if ,cond
         (let ((it ,cond)) ,then)
       ,@else)))

(defmacro gazer-athread ())

(defun gazer-enlist (val)
  (if (and (listp val)
           (not (functionp val)))
      val
    (list val)))

(provide 'gazer-utils)
;;; gazer-utils.el ends here
