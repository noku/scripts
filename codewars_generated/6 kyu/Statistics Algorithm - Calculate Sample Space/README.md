## Statistics Algorithm - Calculate Sample Space
[Statistics Algorithm - Calculate Sample Space](https://www.codewars.com/kata/statistics-algorithm-calculate-sample-space)
Category : algorithms

### Description
Complete the giant_run_on_sentence_method_name - examples, and the appropriate results are:

all_possible_outcomes_of_multiple_trials(coin, 2) should == 4
all_possible_outcomes_of_multiple_trials(coin, 3) should == 8
all_possible_outcomes_of_multiple_trials(dice, 1) should == 6
all_possible_outcomes_of_multiple_trials(dice, 2) should == 36

given the following variables:

coin = ['heads', 'tails']


dice = (1..6).to_a

Definition of Sample Space: set of all possible elementary outcomes of a trial.

Find the number of possible outcomes by using the fundamental counting principle.


The Fundamental counting Principle is:


	If a process requires 2 actions and the 1st action can be done in x ways and the
	2nd action can be done in y ways, then the process can be done in x*y ways.

Consider a coin, and a dice:


coin = ['heads', 'tails']


dice = [1, 2, 3, 4, 5, 6]

If the experiment consists of multiple trials, all possible combinations of outcomes of the trials must be specified as part of the sample space. 

Examples and solutions:


if the trial consists of flipping a coin twice, you should have 4 possible results:


	heads, heads


	heads, tails


	tails, heads


	tails, tails



if each trial were to consist of three coin-flips, you should have 8 results:


	heads, heads, tails


	heads, heads, heads


	tails, heads, tails


	tails, tails, tails


	tails, tails, heads


	heads, tails, heads


	tails, heads, heads


	heads, tails, tails



if each trial were to consist of one dice-roll, you should have 6 possible results:


	1


	2


	3


	4


	5


	6



if each trial were to consist of two dice-rolls, you should have 36 (gasp!) results:


	1, 1


	1, 2


	2, 1


	...I'm not typing out the rest - you get it. :P

### Tags
Algorithms; Mathematics; Logic; Numbers

- - -
