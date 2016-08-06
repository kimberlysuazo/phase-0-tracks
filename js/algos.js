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
    // To check for matching key-value pair, 
      // Loop through object 1, 
          // Check if the key is the value is the same both in object 1 and object 2, using the same key.
          // Only returns true if there is a key-value match.  
              // IF returns true 
                 // function returns TRUE.              
      //ELSE function returns FALSE.
                     
function objectComparer(object1, object2) {
  for(var key1 in object1) {
      object2[key1] == object1[key1];
        if (object2[key1] == object1[key1]){
            return true; 
        }   
  }
  return false; 
 }
 
// driver code 
// create array to test longestItem
var phrases = ["long phrase","longest phrase","longer phrase"];
console.log(longestItem(phrases));

// create objects to test objectCompare
var dog = {'age': 3, name: 'Spot'};
var humans = {name: 'John', age: 3};
var cars = {make: 'Ford', year: 3, color: 'black', name: 'Fiesta'};
var pen = {tip: 'ballpoint', 'ink': 'red'}

// compare two objects with same keys (in different order), and one matching key-value pair 
console.log(objectComparer(dog, humans));
// compare two objects that share one key, one value, but not a key-value pair match
console.log(objectComparer(dog, cars));
// compare two objects that have no similar keys
console.log(objectComparer(pen, cars));
