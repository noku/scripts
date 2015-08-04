## Codewars Script

This is a simple script that parses your *codewars* profile html file and 
generate a markdown description of your account.

### Issues

The current implementation requires that you specify an html file of your
codewars profile. (with all your katas). Then it uses *codewars* api to 
gather necessary information about each kata and group them by the difficulty.


### Possible Improvements

Due to the limited *codewars* api, the future version would not require any
*html* source and will include the in the description of katas also your solution.