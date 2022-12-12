window.addEventListener('load', function(){
// 前半のテストで重複を許さないための記述
  const Buttons = document.querySelectorAll(".button");

  Buttons.forEach(function(Button){
    Button.addEventListener('click',function(){
      switch(this.id%4){
        case 1:
          document.getElementById(`test_item${Number(this.id)+1}_${ this.dataset.val }`).checked = false;
          document.getElementById(`test_item${Number(this.id)+2}_${ this.dataset.val }`).checked = false;
          document.getElementById(`test_item${Number(this.id)+3}_${ this.dataset.val }`).checked = false;
        break;
        case 2:
          document.getElementById(`test_item${Number(this.id)-1}_${ this.dataset.val }`).checked = false;
          document.getElementById(`test_item${Number(this.id)+1}_${ this.dataset.val }`).checked = false;
          document.getElementById(`test_item${Number(this.id)+2}_${ this.dataset.val }`).checked = false;
        break;
        case 3:
          document.getElementById(`test_item${Number(this.id)-2}_${ this.dataset.val }`).checked = false;
          document.getElementById(`test_item${Number(this.id)-1}_${ this.dataset.val }`).checked = false;
          document.getElementById(`test_item${Number(this.id)+1}_${ this.dataset.val }`).checked = false;
        break;
        case 0:
          document.getElementById(`test_item${Number(this.id)-3}_${ this.dataset.val }`).checked = false;
          document.getElementById(`test_item${Number(this.id)-2}_${ this.dataset.val }`).checked = false;
          document.getElementById(`test_item${Number(this.id)-1}_${ this.dataset.val }`).checked = false;
        break;
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

  // const formObj = document.getElementById("test-form")
  // formObj.addEventListener('change', function(){
  //   const input33 = document.querySelectorAll('input[name="test[item33]"]')
  //   const input34 = document.querySelectorAll('input[name="test[item34]"]')
  //   const input33Item1 = document.getElementById("test_item33_4")
  //   console.log("ok")
  //   console.log(input33)

  //   console.log(input33Item1.checked)
  //   console.log(input34[0].value)
  // });
});