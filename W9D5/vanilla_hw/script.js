document.addEventListener("DOMContentLoaded", () => {
  // toggling restaurants

  const toggleLi = (e) => {
    const li = e.target;
    if (li.className === "visited") {
      li.className = "";
    } else {
      li.className = "visited";
    }
  };

  document.querySelectorAll("#restaurants li").forEach((li) => {
    li.addEventListener("click", toggleLi);
  });

  // adding SF places as list items
  
  // --- your code here!
  
  const favoriteSubmit = (e) => {
    const favoriteInput = document.querySelector(".favorite-input");
    const favVal = favoriteInput.value;
    favoriteInput.value = "";
    const li = document.createElement("li");
    li.textContent = favVal;
    const favList = documnt.querySelector(".favorite-submit");
    favList.appendChild(li);
  };
  

  // adding new photos

  // --- your code here!



});
