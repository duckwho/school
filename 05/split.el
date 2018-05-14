;;; split.el splits a string into two substrings.
;;;
;;; Input: aString, the string to be split,
;;;        pos, the split position.
;;; Output: the substring of aString before pos, and
;;;         the substring of aString from pos onwards.
;;;
;;; Begun by: Dr. Adams, for CS 214 at Calvin College.
;;; Completed by: Ian Park
;;; Date: 03/02/2017
;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;

;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;:;
;;; split() splits a string into its two substrings.
;;; Receive: aString, the string to be split,
;;;        pos, the split position.
;;; PRE: 0 <= pos < the length of aString.
;;; Return: the substring of aString before pos, and
;;;         the substring of aString from pos onwards.
;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;

;;; Replace this line with the definition of split()
;;; Code:
(defun split (aString pos)
  "A-STRING, POSITION."
  (list (substring aString 0 pos)
        (substring aString 0 (string-width aString))))


(defun main (aString pos)
  (interactive "sEnter the string to be split: \nnEnter the split position")
  (setq result (split aString pos))
  (setq part1 (elt result 0))
  (setq part2 (elt result 1))
  (message "The first part is %s and the second part is %s" part1 part2))


(main "hello" 0)


(main "hello" 3)


(main "hello" 5)



(defun quadratic_roots (a b c)
  "A, B, C return quad."
  (if (/= a 0) (
                (progn
                  (setq part1 (- (expt b 2) (* 4 a c)))
                  (if (>= part1 0)
                      ;; (list
                       (/ (+ (- b) (sqrt part1)) (* 2 a))

                       ;; (/ (- (- b) (sqrt part1)) (* 2 a))
                       ;; )
                    ;; (list 0 0)
                    )
                  )
                )
    ;; (list 0 0)
    ))

(defun split (a b c)
  "A,B,C return quad."
  (if (/= a 0)
      (progn
        (setq thing (- (expt b 2) (* 4 a c)))
        (if (>= thing 0)
            (list (/ (+ (- b) (sqrt thing)) (* 2 a))
                  (/ (- (- b) (sqrt thing)) (* 2 a)))
          (list 0 0)))
    (list 0 0)))
