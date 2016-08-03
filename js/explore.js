// Pseudocode 
// Reverse function: a function that takes in a string and returns it reversed 
// Input: A string. 
//  Steps: 
//         - Declare new empty string.
//         - Loop through each index of the string given descending from the largest index.
//         - Take each letter beginning from the end of the word and add that to the empty string.    
//  Output: New string.          


function reverse(string) {
var newString = '';
for ( var i = (string.length -1); i > -1; i--) {
   newString += string[i];
}
return newString;
}


//DRIVER CODE

//this prints Kimberly reversed 
console.log(reverse("Kimberly"));

// Stores result of reverse function in new variable. 
var r = reverse("Javascript has a lot of semicolons");
// Adds conditional that only prints r if the string is longer than one letter. 
if (r.length > 1) {
  console.log(r);
} 
