// Pseudocode 
// longest_value function will take in an array of strings and return the string that is the longest. 
// Input: An array 
    // Steps: 
      //evaluate string at each index (loop)
        //Find length of each string 
      // select one with longest length 
      // return that index 
      // using that index, match the appropriate phrase. 
// Output: A string

var phrases = ["long phrase","longest phrase","longer phrase"];

function longest_value(array) {
 array.forEach(function (item, index, array) {
  console.log(item.length);
});
} 
