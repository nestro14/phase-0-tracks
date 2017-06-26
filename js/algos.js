// Release 0 psuedocode
// initailize a variable to hold the longest string
// loop through the array and set the string to the variable
//  - if the current element's length is larger than the previous overide the variable
//  continue until we have looped through the arary
// return the variable with the longest string

var testArray1 = ["long phrase","longest phrase","longer phrase"];
var testArray2 = ["To be or not to be?","It takes two to tango","Be careful what you wish for"];
var testArray3 = ["Electrical","Lighting","Shocking"];

function longestPhrase(array){
  var longest = ''
  for(phrase in array){
    if (longest.length < array[phrase].length) {longest = array[phrase]};
  }
  return longest;
}

console.log(longestPhrase(testArray1));
console.log(longestPhrase(testArray2));
console.log(longestPhrase(testArray3));
