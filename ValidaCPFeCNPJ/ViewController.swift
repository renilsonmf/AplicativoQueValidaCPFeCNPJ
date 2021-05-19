//
//  ViewController.swift
//  ValidaCPFeCNPJ
//
//  Created by Renilson Moreira Ferreira on 18/05/21.
//

import UIKit

class ViewController: UIViewController {
        
    
    @IBOutlet weak var textFieldCpf: UITextField!
    @IBOutlet weak var textFieldCnpj: UITextField!
    @IBOutlet weak var labelResultado: UILabel!
    
    override func viewDidLoad() {
        super.viewDidLoad()
        
    }
    func parametros(){
       
        
        
           // labelResultado.text = "Favor preencher o campo CPF"
     
            //labelResultado.text = validacaoCPF.resultadoCampoDigitado()
        }
        

    @IBAction func buttonConsultarCpf(_ sender: Any) {
        
        guard let textoCPF = textFieldCpf.text else {return}
        let validacaoCPF: CPF = CPF(numeroConsultado: textoCPF)
        labelResultado.text = validacaoCPF.resultadoCampoDigitado()
        if labelResultado.text == "Valido!"{
        }
    }
    @IBAction func buttonConsultarCnpj(_ sender: Any) {
        
        guard let textoCNPJ = textFieldCnpj.text else {return}
        let validacaoCNPJ: CNPJ = CNPJ(numeroConsultado: textoCNPJ)
        labelResultado.text = validacaoCNPJ.resultadoCampoDigitado()
        
    }
    
}
    

