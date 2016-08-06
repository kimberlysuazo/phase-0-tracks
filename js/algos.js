// Pseudocode 
//longestItem function will take in an array of strings and return the string that is the longest. 
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
 
//objectComparer function will take in two objects, and compare their key-value pairs to give. 
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
// OUTPUT: True / False                      
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


// Write a function that takes an integer for length,
//  and builds and returns an array of strings of the given length.
//   So if we ran your function with an argument of 3, 
//   we would get an array of 3 random words back 
//   (the words don't have to be actual sensical English words -- "nnnnfph" totally counts). 
//   The words should be of randomly varying length, with a minimum of 1 letter and a maximum of 10 letters. 
//   (This involves a new trick, generating a random number, that you'll have to look up,
//    but the solution on how to do so is relatively straightforward.)
// Add driver code that does the following 10 times: generates an array, prints the array, 
// feeds the array to your "longest word" function, and prints the result.
function randomWord() {
var chars = "abcdefghijklmnopqrstuvwxyz";
var randomLength = Math.floor(Math.random() * 10) + 1; 
var string= '';
var words = [];
   for (var letters = 0; letters < randomLength; letters ++) {
      var randomLetter= chars[Math.floor(Math.random() * (chars.length))];
      string += randomLetter; 
   }
return string; 
}

function wordArray(num){
var words = []; 
  for (var times = 0; times < num; times ++){
    randomWord(); 
    words.push(randomWord());
  }
  return words
}
console.log(wordArray(7)); 

// (max - min + 1)) + min
// chars.length + 1) 
