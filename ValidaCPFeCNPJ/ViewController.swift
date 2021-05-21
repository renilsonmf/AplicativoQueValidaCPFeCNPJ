//
//  ViewController.swift
//  ValidaCPFeCNPJ
//
//  Created by Renilson Moreira Ferreira on 18/05/21.
//

import UIKit

class ViewController: UIViewController {
        
    
    @IBOutlet weak var textFieldCpfCnpj: UITextField!
    @IBOutlet weak var labelResultado: UILabel!
    
    func resultadoDaConsulta(){
        guard let textoCpfCnpj = textFieldCpfCnpj.text else {return}
        let retornaDados: Consulta = RetornaDados().dados(textoCpfCnpj: textoCpfCnpj)
        labelResultado.text = retornaDados.resultadoCampoDigitado()
    }
    
    @IBAction func buttonConsultarCpfCnpj(_ sender: Any) {
        resultadoDaConsulta()
    }
  
    
}
    

