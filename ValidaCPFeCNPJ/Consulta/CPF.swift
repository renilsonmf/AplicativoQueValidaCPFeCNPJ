//
//  CPF.swift
//  ValidaCPFeCNPJ
//
//  Created by Renilson Moreira Ferreira on 19/05/21.
//

import UIKit

class CPF: Consulta {
    
    init(numeroConsultado: String){
        super.init(numeroConsultado: numeroConsultado, regrasDoCalculo:
         CalculoValidaCPF())
        
    }
    
}
