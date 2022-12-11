window.addEventListener('load', function(){
  const aButtons = document.querySelectorAll(".a_button");
  const bButtons = document.querySelectorAll(".b_button");

  aButtons.forEach(function(aButton){
    aButton.addEventListener('click', function(){
      const aValue = this.dataset.val;
      const bButton = document.getElementById(`test_item${Number(this.id)+1}_${4-aValue }`);
        bButton.checked = true
    });
  });

  const Buttons = document.querySelectorAll(".button");
  // const secondButtons = document.querySelectorAll(".second_button");
  // const thirdButtons = document.querySelectorAll(".third_button");
  // const fourthButtons = document.querySelectorAll(".fourth_button");

  Buttons.forEach(function(Button){
    const Button = document.getElementById(`test_item${Number(this.id)+1}_${4-aValue }`);
  });
});