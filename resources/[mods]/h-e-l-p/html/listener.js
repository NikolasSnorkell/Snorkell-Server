// $(funtion(){
//     window.onload = function(e){
//         window.addEventListener("message", (event)=>{
//             let item = event.data;
//             if(item !== undefined && item.type === "ui"){
//                 if(item.display ===true){
//                    $('#container').show();

//                 }else {
//                     $('#container').hide();
//                 }
//             }
//         })
//     }
// })

$(function () {
  window.onload = (e) => {
    $("#container").hide();
    /* 'links' the js with the Nui message from main.lua */
    window.addEventListener("message", (event) => {
      //document.querySelector("#logo").innerHTML = " "
      var item = event.data;
      if (item !== undefined && item.type === "ui") {
        console.log(item.display);
        /* if the display is true, it will show */
        if (item.display === false) {
          $("#container").show();
          /* if the display is false, it will hide */
        } else {
          $("#container").hide();
        }
      }
    });
  };
});
