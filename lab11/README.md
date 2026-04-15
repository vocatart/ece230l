# Lab 11 - Counters and Dividers

In this lab, we learned how to make clock dividers from two types of counters.

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

This lab compared two clock-divider designs built from flip-flops:
1) a 3-bit ripple counter made from chained T flip-flops and
2) a modulo-6 synchronous counter built from full adders and D flip-flops.

The ripple counter divides the input clock by powers of two, while the
modulo counter resets at count 6 and drives a separate output bit that toggles
once per full count cycle.

## Lab Questions

### 1 - Why does the Modulo Counter actually divide clocks by 2 * Count?

The counter state goes through `Count` input clocks (0 to Count-1). The `out`
signal toggles only once each time the state reaches terminal count, so it
takes one full `Count` clocks to go from low to high and another `Count` clocks
to return high to low. A complete output period is `2 * Count`
clocks, so the divider is `Fin / (2 * Count)`.

### 2 - Why does the ring counter's output go to all 1s on the first clock cycle?

In the ripple chain, every stage starts at 0 after reset. The first stage
toggles to 1 on the first input pulse, and that rising edge is used as the
clock for the next stage, which also toggles to 1. The same happens for the
third stage. Because those transitions ripple through immediately in this model,
the observed state after the first pulse becomes `111`.

### 3 - What width of ring counter would you use to get to an output of ~1KHz?

With a 100MHz board clock speed on the Basys, we need width `N` so `100e6 / 2^N ≈ 1e3`,
which gives `2^N ≈ 100,000` and `N ≈ 16.6`. So a 17bit ring counter would be closest.
