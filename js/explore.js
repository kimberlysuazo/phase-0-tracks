// Pseudocode 
// Reverse function: a function that takes in a strings and returns it reversed 
// Input: A string. 
//  Steps: Loop through each index of the string descending from the largest index.
//         - Take each letter and add that to a new string. 
//         - Print that new string to the console. 
//  Output: New string.          


function reverse(string) {
var newString = '';
for ( var i = (string.length -1); i > -1; i--) {
   newString += string[i];
//for (var i = 1; i < (string.length + 1) ; i++){
  //newString += string[string.length - i];
}
console.log(newString);
}

reverse("Bill");
reverse("Kimberly");

