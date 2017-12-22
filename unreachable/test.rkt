#lang racket/base

(require rackunit
         "main.rkt")

(check-exn exn:fail? (λ () (cond)))
(check-exn exn:fail? (λ () (cond [#f 'dead])))
(check-exn exn:fail? (λ () (case 42
                             [(43) 'dead]
                             [(44) 'dead])))
(check-exn exn:fail? (λ () absurd!))
