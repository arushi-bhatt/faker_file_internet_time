#lang racket
;define a class named files
(define files%
    (class object%
    (super-new)    ;initializing lists
    (define name '(project arushi misc fourtek mobile business galaxy research headings news))
    (define mime_type '(image video audio))
    (define sub_type '(jpeg svg xls gif png avi mp4 uvh aac adp uva aif))
; defining function to get full name 
      (define (get-name) (printf "~a.~a"(list-ref name (random 1 9))(list-ref sub_type (random 1 5))))
;making the function public
      (public-final get-name )
;defining function to get mime types and accordingly their subtypes
        (define (get-mime)
               ( define r (random 1 4))
               (printf "~a" r)
                  (cond
                      ((equal? (- r 1) 0)
                            (printf "~a / ~a"(list-ref mime_type (- r 1)) (list-ref sub_type (- (random 1 6) 1)) ))
                       (else
                            (cond
                              ((equal? (- r 1) 1)
                               (printf "~a / ~a"(list-ref mime_type (- r 1)) (list-ref sub_type (- (random 6 9) 1))) )
                              (else
                               (printf "~a / ~a"(list-ref mime_type (- r 1)) (list-ref sub_type (- (random 9 13) 1))) )
                             );end of inner cond
                        );end of outer else
                    );end of outer cond
          );end of function get-mime
;making the get-mime function public
      (public-final get-mime )
   ); end of object 
    );end of class files





;use this command to get the output  <   (send (new files%) get-mime)  or  (send (new files%) get-name)  >