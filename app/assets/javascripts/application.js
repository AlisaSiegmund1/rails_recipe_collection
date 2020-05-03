// = require rails-ujs
// = require_tree .

document.querySelector(".servings").addEventListener("click", function() {
  console.log("hello")
})


const initialAmounts = document.querySelector(".amount-ingredient").innerText;
console.log(initialAmounts);

initialAmounts.forEach((item) => {
 console.log(item.innerText);
});
