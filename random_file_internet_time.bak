#lang racket
(define files%
    (class object%
    (super-new)
    (define name '(project arushi misc fourtek mobile business galaxy research headings news))
      (define mime_type '(audio video image))
      (define sub_type '(jpeg svg xls gif png avi mp4 uvh aac adp uva aif))
      (define (get-name) (printf "~a.~a"(list-ref name (random 1 9))(list-ref sub_type (random 1 5))))
      (public-final get-name )
        (define (get-mime)
               ( define r (random 1 3))
               (cond
                  ((equal? r 0)
                    (printf "~a / ~a"(list-ref mime_type r) (list-ref sub_type (random 1 4))) )
                  (else
                    (cond
                      ((equal? r 1)
                    (printf "~a / ~a"(list-ref mime_type r) (list-ref sub_type (random 5 8))) )
                      (else
                            (printf "~a / ~a"(list-ref mime_type r) (list-ref sub_type (random 8 12))) )
                       ))))
      (public-final get-mime )
      
       
    )
    )
