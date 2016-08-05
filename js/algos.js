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
    // Make arrays of the values and keys of each object. 
    // To check for matching keys, 
      // Loop through the keys in object 1, to see if any of them are keys in object 2. 
        
             // if (allKeys.indexOf(key)) {var keyIndex = (allKeys.indexOf(key))}
          // IF there is a match 
              // Store it's index.  
              // Check for matching values,
                  // Loop through the values of object 1, to see if any of them are values in object 2. 
                    // IF there is a match, store its index. 
                     // if (allValues.indexOf(value)) { var keyValue = console.log(allValues.indexOf(value))}
                        // IF keyIndex equals, valueIndex, then function returns TRUE. 
                        // ELSE function returns FALSE 
          //ELSE function returns FALSE
                     
function objectComparer(object1, object2) {
// get all keys into arrays 
var allKeys1 = Object.keys(object1);
var allKeys2 = Object.keys(object2);
var allValues1 = [];
var allValues2 = [];
  // get all property values into arrays 
  for(var key in object1) {
      allValues1.push(object1[key]);
  }
  for(var key in object2) {
      allValues2.push(object2[key]);
  }
console.log(allKeys1);
console.log(allKeys2);
console.log(allValues1);
console.log(allValues2);
}


// Add some driver code that tests both outcomes of your function.

// driver code 
var phrases = ["long phrase","longest phrase","longer phrase"];
console.log(longestItem(phrases));

// create objects to test objectCompare
var dog = {name: 'Spot', 'age': 3};
var humans = {name: 'John', 'age': 3};
var cars = {make: 'saab', year: 2015, color: 'black'};

objectComparer(dog, cars);



