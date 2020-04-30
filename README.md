# Base Converter
_Key takeaways from Mathematics for Computer Science, University of London. My motivation for taking this course was to learn fundamental or theoretical knowledge which I would not necessarily learn on the job, but would increase my ability to think logically, ultimately making me a better developer._

In Week 1 of this course, we covered number bases, specifically conversions and arithmetic.
This was the first time I had really studied number bases, and I learnt a great deal.

### What are number bases?
Number bases allow us to use only a small number of symbols to write an unlimited quantity of numbers in a systematic fashion.
Each place digit can take a certain number of digits, e.g. base 2 place digits can take two different digits (1 or 0), whereas base 10 can take ten (0, 1, 2, 3, 4, 5, 6, 7, 8, or 9).

### How do you convert from base 2 to base 10 and vice versa?
As part of the course, we were asked to post an algorithm for these conversions.
I wanted to challenge myself, and wrote a Ruby program which implemented the algorithms.
The algorithm for converting base 2 to base 10 takes the binary number as an array, reverses it, finds 2 to the power of the index of each 1 in the binary number, and adds the sum.
The algorithm for converting base 10 to base 2 finds the quotient and remainder when the decimal is divided by 2.
If a remainder exists, it adds 1 to an array, if not, it adds a 0.
When the quotient is 0, the array can be reversed to reveal the binary.

While learning about `divmod` I discovered that the Ruby method `.to_s` converts bases for you!
