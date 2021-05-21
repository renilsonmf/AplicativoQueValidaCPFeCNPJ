//
//  RetornaDados.swift
//  ValidaCPFeCNPJ
//
//  Created by Renilson Moreira Ferreira on 20/05/21.
//

import Foundation

class RetornaDados {
    
    func dados(textoCpfCnpj: String) -> Consulta {
        
        if textoCpfCnpj.count == 11{
            return CPF(numeroConsultado: textoCpfCnpj)
        }
        else if textoCpfCnpj.count == 14{
            return CNPJ(numeroConsultado: textoCpfCnpj)
        }
        else if textoCpfCnpj.count < 11{
            return CPF(numeroConsultado: textoCpfCnpj)
        }
        return CNPJ(numeroConsultado: textoCpfCnpj)

        
    }
}
