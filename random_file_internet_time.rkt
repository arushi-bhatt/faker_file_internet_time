#lang racket
;define a class named files
(define files%
    (class object%
    (super-new)    ;initializing lists
    (define file_name '(project arushi misc fourtek mobile business galaxy research headings news))
    (define mime_type '(image video audio))
    (define sub_type '(jpeg svg xls gif png avi mp4 uvh aac adp uva aif))
; defining function to get full name 
      (define (get-file_name) (printf "~a.~a"(list-ref file_name(- (random 1 11)1)) (list-ref sub_type (-(random 1 13)1))))
;making the function public
      (public-final get-file_name )
;defining function to get mime types and accordingly their subtypes
        (define (get-mime)
               ( define r (random 1 4))
            
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



;defining class person

(define person%
    (class object%
    (super-new)    ;initializing lists
    (define name '(Elizabeth Robert Will Jack Davvy Bill Mark Angelique Ketty Jaquiline ))
    (define surname '(Smith Jones Willaims Brown Davies Sparrow Wilson Thomas Robinson Evans))
    (define age (random 16 40))
; defining function to get full info
      (define (get-info) (printf "Name : ~a ~a  ;  \n Age : ~a"(list-ref name(-(random 1 9)1))
                                                                (list-ref surname (-(random 1 10)1))
                                                                age)
      )
    
      
;making the function public
      (public-final get-info )

   ); end of object 
    )
;end of class files



;use this command to get the output  <   (send (new files%) get-mime)  or  (send (new files%) get-file_name) (send (new files%) get-info)  >