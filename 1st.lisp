(format t "Enter a list of numbers: ")
(setq L (read))

(format t "~%Maximum = ~a" (apply #'max L))
(format t "~%Minimum = ~a" (apply #'min L))