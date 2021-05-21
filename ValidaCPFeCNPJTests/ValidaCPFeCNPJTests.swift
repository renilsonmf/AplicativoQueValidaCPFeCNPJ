//
//  ValidaCPFeCNPJTests.swift
//  ValidaCPFeCNPJTests
//
//  Created by Renilson Moreira Ferreira on 18/05/21.
//

import XCTest
@testable import ValidaCPFeCNPJ
var viewController = ViewController()

class ValidaCPFeCNPJTests: XCTestCase {

    override func setUpWithError() throws {
  
    }

    override func tearDownWithError() throws {
      
    }
    func testVerificaRegraDoCalculo(){
        
        let consultaCpf = Consulta(numeroConsultado: "86249075518", regrasDoCalculo: CalculoValidaCPF())
        let consultaCnpj = Consulta(numeroConsultado: "52883546000131", regrasDoCalculo: CalculoValidaCNPJ())
        
        XCTAssertEqual(consultaCpf.resultadoCampoDigitado(), "CPF Válido!")
        XCTAssertEqual(consultaCnpj.resultadoCampoDigitado(), "CNPJ Válido!")
    }

    func testDeveReceberUmNumero(){
    
        let cpf = CPF(numeroConsultado: "86249075518")
        let cnpj = CNPJ(numeroConsultado: "52883546000131")
        let cpfErrado = CPF(numeroConsultado: "86249075519")
        
        XCTAssertEqual(cpf.numeroConsultado, "86249075518")
        XCTAssertEqual(cnpj.numeroConsultado, "52883546000131")
        XCTAssertEqual(cpfErrado.numeroConsultado.last, "9")
        
        
    
    }
    
    func testRetornoDosDadosCalculados(){
        
       // let consultaCpf = Consulta(numeroConsultado: "86249075518", regrasDoCalculo: CalculoValidaCPF())
        
        let retornoDados = RetornaDados()
        
        let textoCpf = retornoDados.dados(textoCpfCnpj: "86249075518")
        let textoCnpj = retornoDados.dados(textoCpfCnpj: "52883546000131")

        XCTAssertEqual(textoCpf.numeroConsultado.count, 11)
        XCTAssertEqual(textoCnpj.numeroConsultado.count, 14)
        
        XCTAssertEqual(textoCnpj.resultadoCampoDigitado(), "CNPJ Válido!")
        XCTAssertEqual(textoCpf.resultadoCampoDigitado(), "CPF Válido!")
    
        let falha = retornoDados.dados(textoCpfCnpj: "8624907551")
        XCTAssertEqual(falha.numeroConsultado.count, 10)
        
        let cnpjteste = retornoDados.dados(textoCpfCnpj: "528835460001318")
        
        XCTAssertEqual(cnpjteste.numeroConsultado.count, 15)
    }
    
    func testResultadoDaConsulta(){
        //viewController.buttonConsultarCpfCnpj()
     
    }
    

 

}
