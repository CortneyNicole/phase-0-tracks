


var wordArray = ["crazy", "cat", "lady", "love", "coffee"];

var longest = "";

for(i = 0; i < wordArray.length; i++) {
  if(wordArray[i].length > longest.length) {
    longest =wordArray[i];
  }
}

console.log(longest);