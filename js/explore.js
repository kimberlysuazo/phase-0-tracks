// Pseudocode 
// Reverse function: a function that takes in a strings and returns it reversed 
// Input: A string. 
//  Steps: Loop through each index of the string descending from the largest index.
//         - Take each letter and add that to a new string. 
//         - Print that new string to the console. 
//  Output: New string.          

function reverse(string) {
  for (var i = string.length; i > -1; i--) {
    console.log(string[i])
  }
    return; 
  }
}

function reverse(string) {
var empty = '';
for ( var i = string.length; i > -1; i--) {
   empty += string[i];
   //console.log(empty.substring(string.length));
}
console.log(empty);
}

reverse("Bill")
reverse("Kimberly");