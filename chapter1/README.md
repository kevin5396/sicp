#Chatper 1
###Exercise 1.1:
[ex1.1](ex1-1.scm)

###Exercise 1.2:
I've rewritten it in valid scheme-format. [ex1.2](ex1-2.scm)

###Exercise 1.3:
[ex1.3](ex1-3.scm)

###Exercise 1.4:
`((if (> b 0) + -) a b)`
- if b > 0, then + is the operator and thus a + b is performed.
- otherwise, a - b is performed.

###Exercise 1.5:
- For applicative-order evaluation, it'll enter a infinite loop. Because firstly interpreter will try to substitute (p) by (p) according to the definiton, but this will never end.
- For normal-order evaluation, the result is 0.
```(test 0 (p)) will be interpret as (if (= 0 0) 0 (p)) and then 0``` because the predicate expression is evaluated first, (p) will never be substitute.