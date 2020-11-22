var stopwatchs=document.querySelectorAll("#stopwatch");
var takeexambtns=document.querySelectorAll("#takeexambtn");
for(var i=0;i<stopwatchs.length;i++){
    stopwatchs[i].addEventListener("click",function(){
       var timespan=document.querySelector("#time");
        timespan.innerHTML="2d 3h 40s";
    })
}
for(var i=0;i<stopwatchs.length;i++){
    stopwatchs[i].addEventListener("mouseout",function(){
       var timespan=document.querySelector("#time");
        timespan.innerHTML="Time";
    })
}

