//
//  CalculoValidaCNPJ.swift
//  ValidaCPFeCNPJ
//
//  Created by Renilson Moreira Ferreira on 19/05/21.
//

import UIKit

class CalculoValidaCNPJ: RegrasDoCalculo {
    
    func validaCampo(numeroConsultado: String) -> String {
        
         let penultimoDigito = [5,4,3,2,9,8,7,6,5,4,3,2]
         let ultimoDigito = [6,5,4,3,2,9,8,7,6,5,4,3,2]
         var soma: Int = 0
         var resto: Int
         
         let posicao = numeroConsultado
         let cpf = posicao.map { Int(String($0))! }
     
         if (numeroConsultado.count != 14 ||
                 numeroConsultado == "00000000000" ||
                 numeroConsultado == "11111111111" ||
                 numeroConsultado == "22222222222" ||
                 numeroConsultado == "33333333333" ||
                 numeroConsultado == "44444444444" ||
                 numeroConsultado == "55555555555" ||
                 numeroConsultado == "66666666666" ||
                 numeroConsultado == "77777777777" ){
             return "CNPJ inválido"
         }else{
             for i in 0..<12{
                 soma+=(cpf[i] * penultimoDigito[i])
             }
             resto = (soma * 12) % 11
             if resto < 2{
                 resto = 0
                 
             }
            resto = 11 - resto
             if resto != cpf[12]{
                return "CNPJ inválido"
                
                 // VERIFICA O ULTIMO NUMERO

             }else {
                soma = 0
                 for i in 0..<13{
                     soma+=(cpf[i] * ultimoDigito[i])
                 }
                 resto = (soma * 12) % 11
                 if resto < 2{
                     resto = 0
                 }
                 resto = 11 - resto
                 if resto != cpf[13]{
                    return "CNPJ inválido"
                 }else{
                     return "CNPJ Valido!!"
                 }
         }
         }
     }
    

}
