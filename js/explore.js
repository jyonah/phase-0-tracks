//declare a fucntion called 'reverse' that takes a string paramater
// delcare an empty resulsts string.
// iterate backwards through the paramater, building each character onto the new string.
// return the new string.


function reverse(string) {
  result = ""
  for (idx = string.length - 1; idx >= 0; idx--) {
    result += string[idx];
  } //for
  return result
} //fucntion reverse(string)


var truthyCondition = reverse("hello")

if(5 == 5) {
  console.log(truthyCondition)
}
