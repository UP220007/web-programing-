function es_primo(numero){
    if(numero < 2){
      //si entra en esta sentencia el numero no es primo 
      return false;
    }
    for(let i = 2 ; i < numero;i++){
      if(numero % i ===  0){
        return false;
      }
    }
    return  true;
  }
  
  for(let i=1;i<=100;i++){
    if(es_primo(i)===  true){
      console.log("el numero "  + i + " es  primo")
    } else {
      console.log("el numero "  + i + " no es  primo")
    }
  }
