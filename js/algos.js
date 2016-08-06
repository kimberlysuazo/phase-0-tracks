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
// If there is a keys-value pair match, function will return true. if not, function will return false. 
  // Input: Two objects 
  // Steps: 
    // To check for matching key-value pair, 
      // Loop through object 1, 
          // Check if the  value is the same both in object 1 and object 2, using the same key.
          // Only returns true if there is a key-value match, because it uses the same key for both object values
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
 
//For the function that generates a random word array of the given length, Im splitting into two functions:
// One function (randomWord) generates the random word thats from 1 to 10 letters long. 
// Second function (wordArray) generates a random words array of the specified length. 
  // randomWord function 
  // Input: none
    // Steps:
    // declare alphabet variable
    // declare variable that will select the length of the word randomly from 1 to 10. 
    // declare empty string to later store the new word. 
      // Loop for the amount of the randomly selected length. 
        // generate random number from 0 to max the alphabet length, not included. 
        // Select a random letter by using that random number as index to the alphabet string. 
        // Add that letter to empty string.  
    //return string
  //OUTPUT: string.  

  // wordArray function
  // Input: number
    // Steps: 
    // declare empty array
    // Loop for the amount passed as parameter
      // call randomWord to generate a random word
      // push that random word to empty array
  //OUTPUT: array. 
function randomWord() {
var chars = "abcdefghijklmnopqrstuvwxyz";
var randomLength = Math.floor(Math.random() * 10) + 1; 
var string= '';
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

// ===============================================================================================================
// DRIVER CODE 
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
// prints array of 7 random words 
console.log(wordArray(7)); 


// generates an array, prints the array, feeds the array to "longest item" function, and prints the result.
console.log("below 10 arrays of randomly generated length between 2 and 5, containing random words:");
for (var s = 0; s < 10; s ++) {
  var rnum= Math.floor(Math.random() * 4) + 2; //generates random number bet 2 and 5
  var y = wordArray(rnum); // uses that random number to create word array of given length
  console.log(y); //prints the array
  console.log("Longest word is: " + longestItem(y) + '\n'); // prints the longest word in the array 
}

