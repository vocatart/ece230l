# Sequential Circuits: Latches

In this lab, you learned about the basic building block of sequential circuits: the latch.

## Rubric

| Item | Description | Value |
| ---- | ----------- | ----- |
| Summary Answers | Your writings about what you learned in this lab. | 25% |
| Question 1 | Your answers to the question | 25% |
| Question 2 | Your answers to the question | 25% |
| Question 3 | Your answers to the question | 25% |

## Names

Gabe Sali, Cooper Oneida

## Summary

In this lab we used mux and demuxers along with byte memory to implement a simple memory system for storing information. It also includes an implmentation of a dlatch to show how all the components interact and compare with eachother. The main point here to to compare and contrast behavioral and structural verilog.

## Lab Questions

###  Why can we not just use structural Verilog to implement latches?

Structural Verilog only allows us to connect basic gates together, but latches require feedback loops where the output connects back to the input to hold the state. The `always` blocks allow us to describe the level-sensitive storage behavior.

### What is the meaning of always @(*) in a sensitivity block?

The `always @(*)` syntax means the block triggers whenever any signal used inside the block changes. The asterisk automatically includes all inputs in the sensitivity list, so you don't have to manually list them. This is convenient for describing combinational logic.

### What importance is memory to digital circuits?

Memory allows circuits to store information and maintain state over time, which is essential for anythin beyond simple combinational logic.
