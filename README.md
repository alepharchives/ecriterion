# ECriterion

This repository is the start of a "Criterion" benchmarking library in the spirit of Haskell. Criterion provides two unique features for benchmarking. First, it allows to run a benchmark for a given set time. Second, it can analyze the benchmark results statistically to figure out if they are stable.

The method used to determine stability of the measurements are known as Bootstrapping. Our approach will probably include R-scripts for producing appropriate benchmarking output, rather than carry out these computations inside the Erlang system. But it has not been totally decided yet.

## Status

Experimental, in progress.