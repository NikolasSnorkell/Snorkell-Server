// window.onload = function () {
//   document.body.addEventListener("mousemove", function (event) {
//     let cursor = document.getElementById("cursor");

//     //TODO: More consistent way of aligning the cursor without awkward offsets?
//     let x = event.pageX - cursor.width + 7;
//     let y = event.pageY - 7;

//     cursor.style.left = x;
//     cursor.style.top = y;

//     let audio = document.getElementById("bgaudio");
//     let aud_range = document.getElementById("aud-volume").value;
//     audio.volume = aud_range / 100;
//   });
// };

const cursor = document.querySelector("#t-cont"); // #1

const mouseMove = function (e) {
  // #2

  let w_width = window.innerWidth;
  let w_height = window.innerHeight;

  w_width = w_width / 2;
  w_height = w_height / 2;

  let x = e.clientX;
  let y = e.clientY;
  cursor.style.left = (w_width - x) / 15 + "px";
  cursor.style.top = (w_height - y) / 15 + "px";
};

document.addEventListener("mousemove", mouseMove); // #3

// function volume() {
// let audio = document.getElementById("bgaudio");
//   let aud_range = document.getElementById("aud-volume").value;
//   audio.volume = aud_range / 100;
// }

function volume() {
  let audio = document.getElementById("bgaudio");
  audio.volume = 0;

  setInterval(() => {
    if (audio.volume <= 0.4) audio.volume += 0.05;
  }, 400);

  setTimeout(() => {
    document.getElementById("bg-cont").style.opacity = "1";
  }, 700);
  setTimeout(() => {
    document.getElementById("sname").style.color = "rgba(255, 255, 255,0.2)";
  }, 1300);

  //   let letters = document.getElementById("load").style;

  setTimeout(loading, 2000);

  //   document.getElementById(`l${0}`).style.color = "rgba(255, 255, 255,0.4)";

  function loading() {
    // console.log(letters);
    let k = 0;
    console.log(document.getElementById(`l${k}`).style.color);

    let arr = [
      "81, 255, 0",
      "0,255,255",
      "255,0,0",
      "200,255,0",
      "255,255,255",
      "0,0,0",
    ];

    setInterval(() => {
      let rand = Math.floor(Math.random() * 6);

      if (k == 7) k = 0;
      document.getElementById(`l${k}`).style.color = `rgba(${arr[rand]},0.6)`;
      if (k == 0)
        document.getElementById(`l${6}`).style.color =
          "rgba(255, 255, 255,0.2)";
      else
        document.getElementById(`l${k - 1}`).style.color =
          "rgba(255, 255, 255,0.2)";
      k++;
    }, 200);
  }
}
