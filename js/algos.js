// Pseudocode 
// longest_value function will take in an array of strings and return the string that is the longest. 
// Input: An array 
    // Steps: 
      //evaluate string at each index (loop)
        //Find length of each string 
        // push those lengths to store on the new lengths array. 
      // compare indexes to select which one is larger. select one with longest length 
      // return that index 
      // using that index, match the appropriate phrase. 
// Output: A string


function longest_value(array) {
var lengths = []; 
var max = [0];
  array.forEach(function (item, index, array) {
    lengths.push(item.length);
  });
 for (var counter = 0; counter < lengths.length; counter ++){
    if (max[0] < lengths[counter]) {
      max.unshift(lengths[counter]);
    } 
  } 
console.log(max[0]) 
} 

// driver code 
var phrases = ["long phrase","longest phrase","longer phrase"];
longest_value(phrases);
