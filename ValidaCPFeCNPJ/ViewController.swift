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
        let verificaCPF: SetaDados = SetaDados()
        verificaCPF.Imprimir()
        // Do any additional setup after loading the view.
       // let result: Consulta = Consulta(numero: "86249075519")
        
    }
    

    @IBAction func buttonConsultar(_ sender: Any) {
    }
    
}

