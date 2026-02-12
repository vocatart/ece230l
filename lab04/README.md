# Lab 04 - SOP/POS and KMaps

Cooper Oneida, Gabe Sali

In this lab, you’ve learned how to apply KMaps, Sum Of Products and Products of
sums to simplify digital logic equations. Then, you’ve proven out that they work
using an implemented design on your Basys3 boards.

## Rubric

| Item | Description | Value |
| ---- | ----------- | ----- |
| Summary Answers | Your writings about what you learned in this lab. | 25% |
| Question 1 | Your answers to the question | 25% |
| Question 2 | Your answers to the question | 25% |
| Question 3 | Your answers to the question | 25% |

## Lab Summary

In this lab, we made three different functions in verilog that accomplished the same task. The first was a naive implementation, and the second two used kmaps to achieve SOP with minterms and POS with maxterms. When loaded onto the board, the first four switches (inputs A->D) were passed to each function and all three outputs were passed to the first three leds. Because all these functions have the same result, the leds matched.

## Lab Questions

### Why are the groups of 1’s (or 0’s) that we select in the KMap able to go across edges?

KMaps are able to wrap around, so the left and right edges are adjacent, as well as the top and bottom edges.

### Why are the names Sum of Products and Products of Sums?

In the sum of products, we are taking the OR of all the ANDs ex. (x & y & z) | ..., and in the product of sums, we are taking the AND of all the ORs, ex. (x | y | z) & ...

### Open the test.v file – how are we able to check that the signals match using XOR?

We consider the naive output to be ground truth. To check if the signals match, we XOR the ground truth output with one of the other outputs. If the values are the same, the XOR gate will return 0. So, any result that isnt 0 is a non-matching signal.

