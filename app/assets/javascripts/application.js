// = require rails-ujs
// = require_tree .

let initialQuantityText = document.querySelector(".servings").textContent;
let quantity = parseInt(initialQuantityText);
const initalQuantity = parseInt(initialQuantityText);

const initialAmounts = document.querySelectorAll(".amount-ingredient");



// console.log(initialAmounts);

document.querySelector("#plus").addEventListener("click", function() {
  quantity = quantity + 1;
  document.querySelector(".servings").textContent = quantity


})

document.querySelector("#plus").addEventListener("click", function() {
    initialAmounts.forEach((item, index) => {
      const newItem = item.innerText;
      let newItemInt = parseInt(newItem);

      let updateItem = (newItemInt / initalQuantity) * quantity;
      document.querySelectorAll(".amount-ingredient")[index].innerText = Math.round(updateItem).toFixed(0);
      console.log(updateItem);
  });

})

document.querySelector("#minus").addEventListener("click", function() {
  if (quantity > 0 ) {
    quantity = quantity - 1;
    document.querySelector(".servings").textContent = quantity
  }
})



document.querySelector("#minus").addEventListener("click", function() {
    initialAmounts.forEach((item, index) => {
      const newItem = item.innerText;
      let newItemInt = parseInt(newItem);

      let updateItem = (newItemInt / initalQuantity) * quantity;
      document.querySelectorAll(".amount-ingredient")[index].innerText = Math.round(updateItem).toFixed(0);
      console.log(updateItem);
  });

})



