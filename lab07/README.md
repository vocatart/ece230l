# Number Theory: Subtraction

In this lab you've learned the basics of number theory as it relates to subtraction.

## Rubric

| Item | Description | Value |
| ---- | ----------- | ----- |
| Summary Answers | Your writings about what you learned in this lab. | 25% |
| Question 1 | Your answers to the question | 25% |
| Question 2 | Your answers to the question | 25% |
| Question 3 | Your answers to the question | 25% |

## Names

Cooper Oneida, Gabe Sali

## Summary

In this lab, we implemented a half subtractor, ones compliment adder, and a twos compliment converter. The ones compliment adder uses a ripple adder constructed with the full adders made in the last lab, and then another additional circuits of adders to handle the end around carries. The twos compliment converter uses the full adders to convert an 8-bit number to its compliment.


## Lab Questions

### 1 - Explain the differences between our Half Adder from last lab and the Half Subtractor from this lab.

In the half adder, we take A ^ B as the output and A & B as the carry out. For the half subtractor, we do the same for Y but use ~A & B for the borrow output.

### 2 - What about the end around carry of One’s Complement makes it hard to use and implement?

The end around carry makes this system hard to implement on hardware because it essentially doubles the amount of steps you need to take to get the correct number, since you have to handle the carry out to get the proper value.

### 3 - What is the edge case and problem with Two’s Complement number representation?

The most negative number in twos complement cannot be represented and will cause an overflow.

