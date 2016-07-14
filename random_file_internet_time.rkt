#lang racket
;define a class named files
(define files%
    (class object%
    (super-new)    ;initializing lists
    (define file_name '(project arushi misc fourtek mobile business galaxy research headings news))
    (define mime_type '(image video audio))
    (define sub_type '(jpeg svg xls gif png avi mp4 uvh aac adp uva aif))
; defining function to get full name 
      (define (get-file_name) (printf "~a.~a"(list-ref file_name(- (random 1 11) 1)) (list-ref sub_type (-(random 1 13) 1))))
;making the function public
      (public-final get-file_name )
;defining function to get mime types and accordingly their subtypes
        (define (get-mime)
               ( define r (random 1 4))
            
                  (cond
                      ((equal? (- r 1) 0)
                            (printf "~a / ~a"(list-ref mime_type (- r 1))
                                    (list-ref sub_type (- (random 1 6) 1)) ))
                       (else
                            (cond
                              ((equal? (- r 1) 1)
                               (printf "~a / ~a"
                                       (list-ref mime_type (- r 1))
                                       (list-ref sub_type (- (random 6 9) 1))
                                       )
                               )
                              (else
                               (printf "~a / ~a"(list-ref mime_type (- r 1))
                                       (list-ref sub_type (- (random 9 13) 1))) )
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
    (define/public (name ran)
      (list-ref
       '("Elizabeth" "Robert" "Will" "Jack" "Davvy" "Bill" "Mark" "Angelique" "Ketty" "Jaquiline") ran)
     )
    (define/public (surname ra)
      (list-ref
       '("Smith" "Jones" "Willaims" "Brown" "Davies" "Sparrow" "Wilson" "Thomas" "Robinson" "Evans")ra)
    )
    (define/public (age) (random 16 40))
; defining function to get full info
    (define (get-info)
      (printf "Name : ~a ~a  ;  \n Age : ~a" (name(-(random 1 9)1))
                                             (surname (-(random 1 10)1))
                                             (age)
       )
    )
    
      
;making the function public
      (public-final get-info )

   ); end of object 
    )
;end of class files



;define class internet
(define internet%
    (class person%
       ;initializing lists
      (inherit name)
      (inherit surname )
      (inherit age)
    (define/public (domain a) (list-ref '(gmail.com hotmail.com rediffmail.com yahoo.com naukri.com ) a))
      
    
; defining function to get full info
      (define (get-emailid) (printf "~a_~a_~a@~a" (string-downcase (name(-(random 1 9)1)))
                                                (string-downcase (surname (-(random 1 10)1)))
                                                (age)
                                                (domain(-(random 1 6)1))
                             )
      )
;making the function public
      (public-final get-emailid )

   (super-new))
    )

;end of class internet



;define class int_username
(define int_username%
    (class internet%
       ;initializing argument
      
      ; inheriting from internet class
      (inherit age)
      (inherit domain)
      
    
    
; defining function to get full info
      (define/public (get-e_id u_name) (printf "~a_~a@~a" u_name
                                                (age)
                                                (domain(-(random 1 6)1))
                             )
      )

   (super-new))
    );end of class internet



;***************OUTPUTS**************
;use these commands to get the output
(send (new files%) get-mime)
(printf " \n ")
(send (new files%) get-file_name)
(printf " \n\n ")
(send (new person%) get-info)
(printf " \n\nEmail id : ")
(send (new internet%) get-emailid)
(printf " \n\nEmail id (enter username ): ")
(define u_name (read))
(printf " \n ")
(send (new int_username%) get-e_id u_name)
