;; Write a non-interactive function that doubles the value
;; of its argument, a number. Make the function interactive.
(defun double (number)
  "Double NUMBER."
  (interactive "p")
  (message "The result is %d" (* 2 number)))

;; Write a function that tests whether the current value of
;; fill-column is greater than the argument passed to the
;; function, and if so, prints an appropriate message.
(defun test-fill-column (number)
  "Print message in the echo area depending on NUMBER.
If the NUMBER is less than the value of fill-column,
then let user know; else let user know accordingly."
  (if (> fill-column number)
      (message "fill-column's current value %d > number %d"
	       fill-column number)
    (message "fill-column's current value %d <= number %d"
	     fill-column number)))

(test-fill-column -70)
(test-fill-column 0)
(test-fill-column 80)
