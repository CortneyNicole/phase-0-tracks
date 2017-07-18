// create function to reverse a sentence.
//break sentence into a list of letters
//reverse the order of the letters
//join the list of letters back into a reversed sentence

function reverseString(sentence){
  sentence = sentence.split('');
  sentence = sentence.reverse();
  sentence = sentence.join('');
  return sentence;
}

console.log (reverseString("I love you"));
console.log (reverseString("I missed javascript!"));

var sentence_Reverse = reverseString("Game of Thrones");

var n = 2
if (n < 10 ){
  console.log (sentence_Reverse);
}

