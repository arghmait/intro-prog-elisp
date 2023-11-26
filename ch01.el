;; Generate an error message by evaluating an appropriate
;; symbol that is not within parentheses.
foo

;; Generate an error message by evaluating an appropriate
;; symbol that is between parenthesis.
(foo)

;; Create a counter that increments by two rather than one.
(setq counter 0)
(setq counter (+ counter 2))
counter

;; Write an expression that prints a message in the echo
;; area when evaluated.
(message "There are a total of %d %s"
	 (- fill-column 63)
	 (concat "harry "
		 (substring
		  "potter and friends" 0 6)
		 " books."))
