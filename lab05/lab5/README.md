# Lab 05 - Combinatorial Logic

In this lab, you’ve learned real world applications of digital logic, as well
as how to assemble your own Verilog modules. In addition, you’ve learned how
the constraints file maps your inputs and outputs to real pins on the FPGA.

## Rubric

| Item | Description | Value |
| ---- | ----------- | ----- |
| Summary Answers | Your writings about what you learned in this lab. | 25% |
| Question 1 | Your answers to the question | 25% |
| Question 2 | Your answers to the question | 25% |
| Question 3 | Your answers to the question | 25% |

## Name

Cooper Oneida, Gabe Sali

## Lab Summary

In this lab we wrote a top.v file from scratch to call two other instances of functions we made with minterms and maxterms. We also edited the constraints.xdc to match the switches and leds we were using on the basys board. Since circuit B used the output from circuit A as input A, we defined two wires that held the outputs of each circuit to pass to the leds at the end of the file.

## Lab Questions

### 1 - Explain the role of the Top Level file.

The top level file acts as the entry point for the binary put onto the basys board. The code implemented in the top.v file will be what is sent to the board as the executing code.

### 2 - Explain the function of the Constraints file.

The constraints file sets the physical location of the name from the RTL file to a given pin on the Basys board.

### 3 - Was the selection of Minterm and Maxterm correct for each circuit? What would you have chosen?

For circuit A, while min and maxterms would provide the same results, minterms would be quicker as there is one group in the kmap. For circuit B, we concluded that both min and maxterms would have the same amount of efficiency, so we wouldn't change it.

