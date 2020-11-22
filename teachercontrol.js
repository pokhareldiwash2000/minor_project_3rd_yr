
var alerts=document.querySelectorAll(".alert");
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
function copytoclipboard() {
    /* Get the text field */
    var copyText = document.getElementById("iddisplay");
  
    /* Copy the text inside the text field */
    document.execCommand("copy");
  
    /* Alert the copied text */
    alert("Copied the ExamID: " + copyText.value);
  }