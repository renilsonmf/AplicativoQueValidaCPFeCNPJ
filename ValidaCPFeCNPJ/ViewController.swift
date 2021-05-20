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
    
    override func viewDidLoad() {
        super.viewDidLoad()
        
    }
    
    func dadosConsulta(){
        guard let textoCpfCnpj = textFieldCpfCnpj.text else {return}
        let retornaDados: Consulta = RetornaDados().dados(textoCpfCnpj: textoCpfCnpj)
        labelResultado.text = retornaDados.resultadoCampoDigitado()
    
    }
    @IBAction func buttonConsultarCpf(_ sender: Any) {
        dadosConsulta()
    }
  
    
}
    

