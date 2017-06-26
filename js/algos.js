// Release 0 psuedocode
// initailize a variable to hold the longest string
// loop through the array and set the string to the variable
//  - if the current element's length is larger than the previous overide the variable
//  continue until we have looped through the arary
// return the variable with the longest string

//Variable declarations
var testArray1 = ["long phrase","longest phrase","longer phrase"];
var testArray2 = ["To be or not to be?","It takes two to tango","Be careful what you wish for"];
var testArray3 = ["Electrical","Lighting","Shocking"];

//Functions
function longestPhrase(array){
  var longest = ''
  for(phrase in array){
    if (longest.length < array[phrase].length) {longest = array[phrase]};
  }
  return longest;
}

function hasKeyValuePair(object1, object2){
  var result = false;
  for(var key1 in object1){
    for(var key2 in object2){
      if(object1[key1] === object2[key2] && key1 === key2){
        result = true;
        // console.log(key1 + ' : ' + key2 + ' ' + object1[key1] + ' : ' + object2[key2]);
      };
    };
  };
  return result;
}


// Driver Code
// console.log(longestPhrase(testArray1));
// console.log(longestPhrase(testArray2));
// console.log(longestPhrase(testArray3));

console.log(hasKeyValuePair({name: "Steven", age: 54}, {name: "Tamir", age: 54}));
console.log(hasKeyValuePair({animal: "Dog", legs: 4}, {animal: "Dog", legs: 3}));