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
    // Make arrays of the values of each object. 
    // To check for matching keys, 
      // Loop through object 1, to see if any of the keys are keys in object 2. 
        // Loop through the values of object 1, to see if any of them are values in object 2. 
            // IF both conditions in the loop are true. 
                 // function returns TRUE.              
        //ELSE function returns FALSE

// driver code 
// var phrases = ["long phrase","longest phrase","longer phrase"];
// console.log(longestItem(phrases));

// // create objects to test objectCompare

                     
function objectComparer(object1, object2) {
var allValues1 = [];
var allValues2 = [];

  // get all property values into arrays 
 for(var val in object1) {
      allValues1.push(object1[val]);
  }

 for(var val2 in object2) {
      allValues2.push(object2[val2]);
  }



  for(var key1 in object1) {
      //object2.hasOwnProperty(key1);
      object2[key1] == object1[key1];
      
      for (var t = 0; t < allValues1.length; t ++) {
         var z= (allValues2.indexOf(allValues1[t]));
      }  
        if ( (object2[key1] == object1[key1]) && (z != -1)){
            return true; 
        }
        
  }
  return false; 
 }
 
var dog = {name: 'Spot', 'age': 3};
var humans = {name: 'John', 'age': 3};
var cars = {make: 'saab', year: 3, color: 'black', name: 3 };


console.log(objectComparer(dog, humans));
console.log(objectComparer(dog, cars));