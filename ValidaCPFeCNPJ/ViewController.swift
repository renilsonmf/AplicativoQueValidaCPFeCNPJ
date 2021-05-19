//
//  ViewController.swift
//  ValidaCPFeCNPJ
//
//  Created by Renilson Moreira Ferreira on 18/05/21.
//

import UIKit

class ViewController: UIViewController {
        
    
    @IBOutlet weak var textFieldCpf: UITextField!
    @IBOutlet weak var labelResultado: UILabel!
    
    override func viewDidLoad() {
        super.viewDidLoad()
       
    }
    

    @IBAction func buttonConsultar(_ sender: Any) {
        guard let textoCPF = textFieldCpf.text else {return}
        let validacaoCPF: CPF = CPF(numeroConsultado: textoCPF)
        
        if textoCPF == ""{
            labelResultado.text = "Favor preencher o campo CPF"
        }else{
            labelResultado.text = validacaoCPF.resultadoCampoDigitado()
            print(validacaoCPF.resultadoCampoDigitado())
        }
      
       
        
    }
    func verificaCampos() {
        if textFieldCpf == nil {
        }
    }
    
}

