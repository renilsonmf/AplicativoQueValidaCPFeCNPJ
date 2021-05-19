//
//  SetaDados.swift
//  ValidaCPFeCNPJ
//
//  Created by Renilson Moreira Ferreira on 19/05/21.
//

import UIKit

class SetaDados{
    
    func Imprimir(){
        let listaDeCPF = [
         CPF(numeroConsultado: "86249075518"),
         CPF(numeroConsultado: "47445545855"),
         CPF(numeroConsultado: "05068187569"),
         CPF(numeroConsultado: "03294209509")
        ]
        
        for i in 0...listaDeCPF.count-1{
            print(listaDeCPF[i].numeroConsultado)
            print(listaDeCPF[i].resultadoCampoDigitado())
        }
        
    }
    
    
}
