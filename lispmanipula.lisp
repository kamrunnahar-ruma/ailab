 (setq mylist '(10 20 30 40 50))

(print (car mylist))
(print (cdr mylist))
(print (cons 5 mylist))
(print (list 1 2 3))
(print (append mylist '(60 70)))


(with-open-file (s "max.lisp")
(loop for form = (read s nil nil)
while form
do (print (eval form))))
