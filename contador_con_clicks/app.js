let contador = document.getElementById('container-clicks');
let btnIncremento = document.querySelector('.incremento');
let btnDecremento = document.querySelector('.decremento');
let btnReset = document.querySelector('.reset')
let count = 0;
btnIncremento.addEventListener("click",function(){
    count++;
    contador.innerText = count;
})
//console.log(btnDecremento);

document.addEventListener("DOMContentLoaded", () =>{
    contador .innerText = count;

    btnIncremento.addEventListener("click",function(){
        count++;
        contador.innerText = count;
    })

    btnDecremento.addEventListener("click",function(){
        if(count>=0){
            count--;
            if (count<0){
                count=0;
                contador.innerText = count;
                alert("no puedes decrementar mas ya que el contador es cero")
            }else{
                contador.innerText = count;
            }
        } 
        
    })

    btnReset.addEventListener("click",function(){
        count=0;
        contador.innerText = count;
    })
})