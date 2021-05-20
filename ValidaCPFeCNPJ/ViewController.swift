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

    
    func dadosCNPJ(){
        guard let textoCpfCnpj = textFieldCpfCnpj.text else {return}
        let validacaoCNPJ: CNPJ = CNPJ(numeroConsultado: textoCpfCnpj)
        labelResultado.text = validacaoCNPJ.resultadoCampoDigitado()
        
    }
    func dadosCPF(){
        guard let textoCpfCnpj = textFieldCpfCnpj.text else {return}
        let validacaoCPF: CPF = CPF(numeroConsultado: textoCpfCnpj)
        labelResultado.text = validacaoCPF.resultadoCampoDigitado()
    }
    @IBAction func buttonConsultarCpf(_ sender: Any) {
        
        guard let textoCpfCnpj = textFieldCpfCnpj.text else {return}
        
        // colocar em outra classe
        if textoCpfCnpj.count == 11{
            dadosCPF()
            
        }
        else if textoCpfCnpj.count == 14{
            dadosCNPJ()
            
        }
        
        // enum com possiveis erros
        else if textoCpfCnpj == ""{
            labelResultado.text = "Preencha o campo!"
        }else{
            labelResultado.text = "Informe um CPF ou CNPJ valido!"
        }
        if labelResultado.text == "CPF Válido!" || labelResultado.text == "CNPJ Válido!"{
            labelResultado.textColor = UIColor.systemGreen
        }else{
            labelResultado.textColor = UIColor.red
        }
       
    
    }
  
    
}
    

