var code ; 
function createCode(){ 
code = new Array();
var codeLength = 4;
var checkCode = document.getElementById("checkCode");
checkCode.value = "";

var selectChar = new Array(2,3,4,5,6,7,8,9,'A','B','C','D','E','F','G','H','J','K','L','M','N','P','Q','R','S','T','U','V','W','X','Y','Z');

for(var i=0;i<codeLength;i++) {
   var charIndex = Math.floor(Math.random()*32);
   code +=selectChar[charIndex];
}
if(code.length != codeLength){
   createCode();
}
checkCode.value = code;
}
function Change(){
  createCode();
  validate();
}


function validate () {
var inputCode = document.getElementById("input1").value.toUpperCase();
var reg=document.getElementById("Reg");
if(inputCode.length <=0) {
    reg.innerText="请输入验证码！";   
   return false;
}
else if(inputCode != code ){
     reg.innerText="验证码输入错误！";
   createCode();
   return false;
}
else {
   reg.innerText="验证成功！";
   return true;
}
}

