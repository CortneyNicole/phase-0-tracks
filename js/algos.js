
//Release 0
//longest word method
function longestWord(wordArray) {
  var longest = "";
  for(i = 0; i < wordArray.length; i++) {
    if(wordArray[i].length > longest.length) {
      longest = array[i];
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

  console.log(lengthOne);
  console.log("****");
  console.log(keys1);
  console.log("****");
  console.log(keys2);
  console.log("****");

  for(i = 0; i < lengthOne; i++) {
    if(keys1[i] == keys2[i]) {
      if(obj1[keys1[i]] == obj2[keys2[i]]) {
        return true;
      }
    }
  }
  return false;
}

var array1 = ["crazy", "cat", "lady", "love", "coffee"];
var array2 = ["stress", "bootcamp", "confusion", "excitement"];
console.log(longestWord(array1));
console.log(longestWord(array2));

var gemmaCat = {name: "Maddi", adoptionAge: "10 months", age: 4};
var maddiCat = {name: "Gemma", adoptionAge: "10 months", age: 2};
console.log(matchObjects(maddiCat, gemmaCat));





