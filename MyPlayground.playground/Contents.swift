   
   
   var numeroConsultado = "11111111111"
   
   func validaCampo(numeroConsultado: String) -> String {
        
        let penultimoDigito = [10,9,8,7,6,5,4,3,2]
        let ultimoDigito = [11,10,9,8,7,6,5,4,3,2]
        var soma: Int = 0
        var resto: Int
        
        //guard let textoCpf = view1.t else { return }

        //var posicao = textoCpf
        let posicao = numeroConsultado
        let cpf = posicao.map { Int(String($0))! }

        if cpf[0] == cpf[1] && cpf[1] == cpf[2] && cpf[2] == cpf[3] && cpf[3] == cpf[4] && cpf[4] == cpf[5] && cpf[5] == cpf[6] && cpf[6] == cpf[7] && cpf[7] == cpf[8] && cpf[8] == cpf[9] && cpf[9] == cpf[10] {

          //  resultadoCpf.text = "CPF Inválido."
            
    //VERIFICA O PENULTIMO NUMERO
        }else{
            for i in 0..<9{
                soma+=(cpf[i] * penultimoDigito[i])
            }
            resto = (soma * 10) % 11
            if resto == 10{
                resto = 0
            }
            if resto != cpf[9]{
               return "Invalido"
                
            //    resultadoCpf.text = "CPF Inválido!"
            } else {
                soma = 0
                
    // VERIFICA O ULTIMO NUMERO
                
                for i in 0..<10{
                    soma+=(cpf[i] * ultimoDigito[i])
                }
                resto = (soma * 10) % 11
                if resto == 10{
                    resto = 0
                }
                if resto != cpf[10]{
                    
                  //  resultadoCpf.text = "CPF Inválido!"
                   return "Invalido"
                }else{
                 //   resultadoCpf.text = "CPF Válido"
                    return "Valido"
                }
        }

        

        }
        return "Invalido"
    }
   
   print(numeroConsultado)
   print(validaCampo(numeroConsultado: numeroConsultado))
