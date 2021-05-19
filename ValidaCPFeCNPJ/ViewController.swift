//
//  ViewController.swift
//  ValidaCPFeCNPJ
//
//  Created by Renilson Moreira Ferreira on 18/05/21.
//

import UIKit

class ViewController: UIViewController {
        
    
    @IBOutlet weak var textFieldCpf: UITextField!
    
    override func viewDidLoad() {
        super.viewDidLoad()
       
    }
    

    @IBAction func buttonConsultar(_ sender: Any) {
        guard let textoCPF = textFieldCpf.text else {return}
        let teste: CPF = CPF(numeroConsultado: textoCPF)
        print(teste.resultadoCampoDigitado())
        
    }
    
}

