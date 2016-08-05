// Pseudocode 
// longestItem function will take in an array of strings and return the string that is the longest. 
// Input: An array 
    // Steps: 
      // set an empty lengths array 
      // declare new max variable with value of 0 
      //evaluate string at each index (loop)
        //Find length of each string 
        // push those lengths to store on the new lengths array. 
      // Set a loop that will go through each item of the lengths array
        // it will compare the length to max. 
          // IF that length is larger, it will set that as the max variable value.
      // Method will return the longest string by using the index of max in the lengths array 
      // and then using that index to access the string in the original array      
// Output: A string

function longestItem(array) {
var lengths = []; 
var max = 0;
  array.forEach(function (item, index, array) {
    lengths.push(item.length);
  });
  lengths.forEach(function (item, index, array) {
    if (max < item) {
      max = item;
    } 
  });
return array[lengths.indexOf(max)];
} 

// objectComparer function will take in two objects, and compare their key-value pairs to give. 
// If any keys or values match, function will return true. if not, function will return false. 
  // Input: Two objects 
  // Steps:
    // 

// In algos.js, write a function that takes two objects and checks to 
// see if the objects share at least one key-value pair. 
// If we called your function with {name: "Steven", age: 54} and {name: "Tamir", age: 54}, the function would return true, 
// because at least one key-value pair matches between the two objects. If no pairs match 
// (and keep in mind that the two objects may not even have any of the same keys), 
// the function should return false. To make your life easier, don't worry about whether a property is a string 
// ('age') or an identifier name (age). Those can be considered equivalent. 

// Add some driver code that tests both outcomes of your function.

// driver code 
var phrases = ["long phrase","longest phrase","longer phrase"];
console.log(longestItem(phrases));
