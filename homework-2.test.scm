(load "./test-helpers")
(load "./homework-2")

; Exercise 1
(test "substitue: correctly replaces 'yeah with 'maybe"
      (assert-equals
       '(she loves you maybe maybe maybe)  
       (substitute '(she loves you yeah yeah yeah) 'yeah 'maybe)))

;Exercise 7
(test "((make-tester 'hal) 'hal) returns true"
      (assert-true ((make-tester 'hal) 'hal)))

(test "((make-tester 'hal) 'small) returns false"
      (assert-false ((make-tester 'hal) 'small)))

;Exercise 8
(test "product returns the correct product with increment and identity "
      (assert-equals
       24
       (product identity 1 increment 4)))

(test "product returns the correct product with increment-two and double"
      (assert-equals
       12
       (product double-it 1 increment-two 4)))

(test "(factorial 5) returns 120"
      (assert-equals
       120
       (factorial 5)))

(define pi 3.14159265359)

(test "estimate pi returns a value within 0.0001 of pi"
      (assert-true
       (< (abs (- (estimate-pi) pi)) 0.001)))

(test "sum: return the corrent value with increment and identity"
      (assert-equals
       15
       (sum identity 1 increment 5)))
