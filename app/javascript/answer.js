window.addEventListener('load', function(){
// 前半のテストで重複を許さないための記述
  const Buttons = document.querySelectorAll(".button");

  Buttons.forEach(function(Button){
    Button.addEventListener('click',function(){
      switch(this.id%4){
        case null||1:
          document.getElementById(`test_item${Number(this.id)+1}_${ this.dataset.val }`).checked = false;
          document.getElementById(`test_item${Number(this.id)+2}_${ this.dataset.val }`).checked = false;
          document.getElementById(`test_item${Number(this.id)+3}_${ this.dataset.val }`).checked = false;
        case 2:
          document.getElementById(`test_item${Number(this.id)-1}_${ this.dataset.val }`).checked = false;
          document.getElementById(`test_item${Number(this.id)+1}_${ this.dataset.val }`).checked = false;
          document.getElementById(`test_item${Number(this.id)+2}_${ this.dataset.val }`).checked = false;
        case 3:
          document.getElementById(`test_item${Number(this.id)-2}_${ this.dataset.val }`).checked = false;
          document.getElementById(`test_item${Number(this.id)-1}_${ this.dataset.val }`).checked = false;
          document.getElementById(`test_item${Number(this.id)+1}_${ this.dataset.val }`).checked = false;
        case 0:
          document.getElementById(`test_item${Number(this.id)-3}_${ this.dataset.val }`).checked = false;
          document.getElementById(`test_item${Number(this.id)-2}_${ this.dataset.val }`).checked = false;
          document.getElementById(`test_item${Number(this.id)-1}_${ this.dataset.val }`).checked = false;
      };
    });
  });

// 後半のテストで重複を許さないための記述
  const aButtons = document.querySelectorAll(".a_button");
  const bButtons = document.querySelectorAll(".b_button");

  aButtons.forEach(function(aButton){
    aButton.addEventListener('click', function(){
      const aValue = this.dataset.val;
      const bButton = document.getElementById(`test_item${Number(this.id)+1}_${4-aValue }`);
      bButton.checked = true
    });
  });
});