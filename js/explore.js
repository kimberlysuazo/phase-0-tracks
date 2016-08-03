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
}
return newString;
}


//Driver code

//this prints Kimberly reversed 
console.log(reverse("Kimberly"));

// Stores result of reverse function in new variable. 
var r = reverse("Javascript has a lot of semicolons");
// Adds conditional that only prints r if the string is longer than one letter. 
if (r.length > 1) {
  console.log(r);
} 
