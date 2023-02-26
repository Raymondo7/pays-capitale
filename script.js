function showContent(){
    let selection = document.querySelector(".selection").value;
    let cont0 = document.getElementById("content_0");
    let cont1 = document.getElementById("content_1");
    let cont2 = document.getElementById("content_2");
    let cont3 = document.getElementById("content_3");
    let cont4 = document.getElementById("content_4");
    let cont5 = document.getElementById("content_5");
    let cont6 = document.getElementById("content_6");

    if(selection === '0'){
        cont1.style.display = 'none';
        cont2.style.display = 'none';
        cont3.style.display = 'none';
        cont4.style.display = 'none';
        cont5.style.display = 'none';
        cont6.style.display = 'none';
        cont0.style.display = 'block';
        cont0.style.width= '100%';
        cont0.style.height= '100%';
        cont0.style.overflow= 'hidden';
        cont0.style.paddingLeft= '0px';
        cont0.style.paddingRight= '0px';
        cont0.style.paddingTop= '170px';
    }else if(selection === '1'){
        cont0.style.display = 'none';
        cont2.style.display = 'none';
        cont3.style.display = 'none';
        cont4.style.display = 'none';
        cont5.style.display = 'none';
        cont6.style.display = 'none';
        cont1.style.display = 'block';
        cont1.style.width= '100%';
        cont1.style.height= '100%';
        cont1.style.overflow= 'hidden';
        cont1.style.paddingLeft= '0px';
        cont1.style.paddingRight= '0px';
        cont1.style.paddingTop= '170px';
    }else if(selection === '2'){
        cont0.style.display = 'none';
        cont1.style.display = 'none';
        cont3.style.display = 'none';
        cont4.style.display = 'none';
        cont5.style.display = 'none';
        cont6.style.display = 'none';
        cont2.style.display = 'block';
        cont2.style.width= '100%';
        cont2.style.height= '100%';
        cont2.style.overflow= 'hidden';
        cont2.style.paddingLeft= '0px';
        cont2.style.paddingRight= '0px';
        cont2.style.paddingTop= '170px';
    }else if(selection === '3'){
        cont0.style.display = 'none';
        cont1.style.display = 'none';
        cont2.style.display = 'none';
        cont4.style.display = 'none';
        cont5.style.display = 'none';
        cont6.style.display = 'none';
        cont3.style.display = 'block';
        cont3.style.width= '100%';
        cont3.style.height= '100%';
        cont3.style.overflow= 'hidden';
        cont3.style.paddingLeft= '0px';
        cont3.style.paddingRight= '0px';
        cont3.style.paddingTop= '170px';
    }else if(selection === '4'){
        cont0.style.display = 'none';
        cont1.style.display = 'none';
        cont2.style.display = 'none';
        cont3.style.display = 'none';
        cont5.style.display = 'none';
        cont6.style.display = 'none';
        cont4.style.display = 'block';
        cont4.style.width= '100%';
        cont4.style.height= '100%';
        cont4.style.overflow= 'hidden';
        cont4.style.paddingLeft= '0px';
        cont4.style.paddingRight= '0px';
        cont4.style.paddingTop= '170px';
    }else{
        cont0.style.display = 'none';
        cont1.style.display = 'none';
        cont2.style.display = 'none';
        cont3.style.display = 'none';
        cont4.style.display = 'none';
        cont6.style.display = 'none';
        cont5.style.display = 'block';
        cont5.style.width= '100%';
        cont5.style.height= '100%';
        cont5.style.overflow= 'hidden';
        cont5.style.paddingLeft= '0px';
        cont5.style.paddingRight= '0px';
        cont5.style.paddingTop= '170px';   
    }    
}
showContent();
let myForm = document.getElementById('MyForm');

myForm.addEventListener('submit',function(e){
    let myInput = document.getElementById('element');
    let myRegex = /^[a-zA-Z-\s]+([éè]?)[a-z]?$/;
    let cont0 = document.getElementById("content_0");
    let cont1 = document.getElementById("content_1");
    let cont2 = document.getElementById("content_2");
    let cont3 = document.getElementById("content_3");
    let cont4 = document.getElementById("content_4");
    let cont5 = document.getElementById("content_5");
    let cont6 = document.getElementById("content_6");
    cont6.style.display = 'block';

    if(myInput.value.trim() == "" | (myRegex.test(myInput.value) == false)){
        let myError = document.getElementById('error');
        let myReche = document.getElementById('reche');
        let myF = document.getElementById('forme');
        myError.innerHTML = "!";
        myError.style.color = "red";
        myError.style.fontSize = "30px";
        myReche.style.marginLeft = "8px";
        myInput.style.paddingBottom = "5px";
        myF.style.marginTop = "2px";
        e.preventDefault();
    }else{
        cont0.style.display = 'none';
        cont1.style.display = 'none';
        cont2.style.display = 'none';
        cont3.style.display = 'none';
        cont4.style.display = 'none';
        cont5.style.display = 'none';
        cont6.style.display = 'block';
        cont6.style.width= '100%';
        cont6.style.height= '100%';
        cont6.style.overflow= 'hidden';
        cont6.style.paddingLeft= '0px';
        cont6.style.paddingRight= '0px';
        cont6.style.paddingTop= '170px';
        e.preventDefault();
        console.log("bon");
    }
});