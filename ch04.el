;; Write your simplified-end-of-buffer function definition;
;; then test it to see whether it works.
(defun simplified-end-of-buffer ()
  "Move point to the end of the buffer;
leave mark at previous position."
  (interactive)
  (push-mark)
  (goto-char (point-max)))

;; Use if and get-buffer to write a function that prints a
;; message telling whether a buffer exists.
(defun test-buffer-exists (buffer)
  "Print message in the echo area depending on BUFFER.
If the BUFFER is a string and and does not exist,
then let user know; else let user know accordingly."
  (interactive
   (list (read-buffer
	  "Enter name of buffer: "
	  (current-buffer))))
  (if (get-buffer buffer)
      (message "The buffer %s exists." buffer)
    (message "The buffer %s does not exist." buffer)))
