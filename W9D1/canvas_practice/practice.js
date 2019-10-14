document.addEventListener("DOMContentLoaded", function(){
    const canvasEle = document.getElementById("mycanvas");
    canvasEle.width = 500;
    canvasEle.height = 500;
    const ctx = canvasEle.getContext("2d");
    ctx.fillStyle = "orange";
    ctx.fillRect(0, 0, 200, 300);
    ctx.beginPath();
    ctx.arc(100, 100, 20, 0, 2 * Math.PI, true);
    ctx.strokeStyle = "black";
    ctx.lineWidth = 3;
    ctx.stroke();
    ctx.fillStyle = "red";
    ctx.fill(); 

});
