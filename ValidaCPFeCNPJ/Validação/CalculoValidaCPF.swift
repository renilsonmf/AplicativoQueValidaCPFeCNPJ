//
//  ValidaCPF.swift
//  ValidaCPFeCNPJ
//
//  Created by Renilson Moreira Ferreira on 18/05/21.
//

import Foundation

class CalculoValidaCPF: RegrasDoCalculo {
    
    func validaCampo(numeroConsultado: String) -> String {
         
         let penultimoDigito = [10,9,8,7,6,5,4,3,2]
         let ultimoDigito = [11,10,9,8,7,6,5,4,3,2]
         var soma: Int = 0
         var resto: Int
         
         let posicao = numeroConsultado
         let cpf = posicao.map { Int(String($0))! }
       
         if (numeroConsultado.count != 11 ||
                 numeroConsultado == "00000000000" ||
                 numeroConsultado == "11111111111" ||
                 numeroConsultado == "22222222222" ||
                 numeroConsultado == "33333333333" ||
                 numeroConsultado == "44444444444" ||
                 numeroConsultado == "55555555555" ||
                 numeroConsultado == "66666666666" ||
                 numeroConsultado == "77777777777" ){
             return "Informe um CPF ou CNPJ valido!!"
         }else{
             for i in 0..<9{
                 soma+=(cpf[i] * penultimoDigito[i])
             }
             resto = (soma * 10) % 11
             if resto == 10{
                 resto = 0
             }
             if resto != cpf[9]{
                return "Informe um CPF ou CNPJ valido!!"
                 
                 // VERIFICA O ULTIMO NUMERO

             }else {
                 soma = 0
                 for i in 0..<10{
                     soma+=(cpf[i] * ultimoDigito[i])
                 }
                 resto = (soma * 10) % 11
                 if resto == 10{
                     resto = 0
                 }
                 if resto != cpf[10]{
                    return "Informe um CPF ou CNPJ valido!!"
                 }else{
                     return "CPF Válido!"
                 }
         }
         }
     }
}
    

