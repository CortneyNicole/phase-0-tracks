
//Release 0
//longest word method
function longestWord(wordArray) {
  var longest = "";
  for(i = 0; i < wordArray.length; i++) {
    if(wordArray[i].length > longest.length) {
      longest = wordArray[i];
    }
  }
  return longest;
}


//Release 1
 //loop through each object
  //find if any key-value pairs match
  //if any match return true
  //else return false
function matchObjects(obj1, obj2) {

  var lengthOne = Object.keys(obj1).length;
  var keys1 = Object.keys(obj1);
  var keys2 = Object.keys(obj2);
  for(i = 0; i < lengthOne; i++) {
    if(keys1[i] == keys2[i]) {
      if(obj1[keys1[i]] == obj2[keys2[i]]) {
        return true;
      }
    }
  }
  return false;
}


//Release 2
// create a program that takes a number as an argument
function randomLengthArray(nLength) {
  //create alphabet string
  var alphabet = "abcdefghijklmnopqrstuvwxyz";
  //generating random number for length of array strings
  min = Math.ceil(1);
  max = Math.floor(10);
  var  stringLengths = Math.floor(Math.random() * (max - min + 1)) + min;
  //loop through alphabet and and set the index to stringLength
  for (i = 0; i < alphabet.length; i++) {
    alphabet[i] = stringLengths
  }
}


//driver code

//release 0
var array1 = ["crazy", "cat", "lady", "love", "coffee"];
var array2 = ["stress", "bootcamp", "confusion", "excitement"];
console.log(longestWord(array1));
console.log(longestWord(array2));
console.log("***********")


//release 1
var gemmaCat = {name: "Maddi", adoptionAge: "10 months", age: 4};
var maddiCat = {name: "Gemma", adoptionAge: "10 months", age: 2};
console.log(matchObjects(maddiCat, gemmaCat));
console.log("***********")




