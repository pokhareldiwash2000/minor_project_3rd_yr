
var alerts=document.querySelectorAll("#warn");
for(i=0;i<alerts.length;i++){
    alerts[i].addEventListener('click',function(){
        this.remove();
    })
}

var iddisplay=document.querySelector("#iddisplay");
iddisplay.value=examIdGeneration();
function examIdGeneration(){
    return Date.now();
}
//page restriction
var times;
var leave=document.querySelector("#leavemsg");
leave.addEventListener('click',function(){
    this.textContent="Please Resume.";
     times=setTimeout(() => {
        this.classList.add("notshown");
    },2000);
})


var restricted=document.querySelector("#restricted");
var timeout;
restricted.addEventListener("mouseleave",function(){
    var leave=document.querySelector("#leavemsg");
    leave.textContent="Warning!! Please return to the page within 5 sec and click this Dialogue.Otherwise you will be Disqualified";
    leave.classList.remove("notshown");
    timeout=setTimeout(() => {
        var leave=document.querySelector("#leavemsg");
        if(leave.textContent==="Please Resume."){
            clearTimeout(timeout);
        }
        else{
            alert("You are Disqualified.");
        }
    },5000);
})


// //face detection
////incomplete =>>>>
// let video = document.getElementById('videoInput');
// let src = new cv.Mat(video.height, video.width, cv.CV_8UC4);
// let dst = new cv.Mat(video.height, video.width, cv.CV_8UC4);
// let gray = new cv.Mat();
// let cap = new cv.VideoCapture(video);
// let faces = new cv.RectVector();
// let classifier = new cv.CascadeClassifier();

// // load pre-trained classifiers
// classifier.load('lib\haarcascade_frontalface_default.xml');

// const FPS = 30;
// function processVideo() {
//     try {
//         if (!streaming) {
//             // clean and stop.
//             src.delete();
//             dst.delete();
//             gray.delete();
//             faces.delete();
//             classifier.delete();
//             return;
//         }
//         let begin = Date.now();
//         // start processing.
//         cap.read(src);
//         src.copyTo(dst);
//         cv.cvtColor(dst, gray, cv.COLOR_RGBA2GRAY, 0);
//         // detect faces.
//         classifier.detectMultiScale(gray, faces, 1.1, 3, 0);
//         // draw faces.
//         for (let i = 0; i < faces.size(); ++i) {
//             let face = faces.get(i);
//             let point1 = new cv.Point(face.x, face.y);
//             let point2 = new cv.Point(face.x + face.width, face.y + face.height);
//             cv.rectangle(dst, point1, point2, [255, 0, 0, 255]);
//         }
//         cv.imshow('canvasOutput', dst);
//         // schedule the next one.
//         let delay = 1000/FPS - (Date.now() - begin);
//         setTimeout(processVideo, delay);
//     } catch (err) {
//         utils.printError(err);
//     }
// };

// // schedule the first one.
// setTimeout(processVideo, 0);
