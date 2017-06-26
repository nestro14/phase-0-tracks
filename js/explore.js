// pseudocode for reverse fucntion
// declare a fucntion that take in a string as a parameter
// convert the string into an array of character with the split fucntion
// loop throuhg that array backwards with the counter decending down
// push the elements into an new array and convert into string with join fucntion
// output new string of elements

function reverse(string){
  var reversed_array = [];
  array_of_chars = string.split('');
  for (var i = array_of_chars.length-1; i >= 0; i--) {
    reversed_array.push(array_of_chars[i]);
  }
  return reversed_array.join('');
}

function isPalindrome(string){
  var revesedString = string.split('').reverse().join('');
  if (string.toLowerCase() === revesedString.toLowerCase()){
    return true;
  }
  else{
    return false;
  }
}

// reverse("hello");

var myString = "Hello";
var revesedString = null

if (isPalindrome(myString)){
  console.log("This string is a is a palindrome, not need to reverse it.");
}else{
  revesedString = reverse(myString);
}

if (revesedString.length >= 5){
  console.log("The string reversed is: " + revesedString);
}else{
  console.log("Sorry i can't print your reversed string :(")
}
