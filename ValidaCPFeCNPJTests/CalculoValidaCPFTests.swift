//
//  CpfTests.swift
//  ValidaCPFeCNPJTests
//
//  Created by Renilson Moreira Ferreira on 21/05/21.
//

import XCTest
@testable import ValidaCPFeCNPJ

class CalculoValidaCPFTests: XCTestCase {

    override func setUpWithError() throws {
      
    }

    override func tearDownWithError() throws {
        
    }

    func testDeveVerificarRetornoDaFuncaoCalculoCPF(){
    
        let cpfCorreto = CPF(numeroConsultado: "86249075518")
        XCTAssertEqual(cpfCorreto.resultadoCampoDigitado(), "CPF Válido!")
        
        let verificaPenultimoNumero = CPF(numeroConsultado: "86249075578")
        XCTAssertEqual(verificaPenultimoNumero.resultadoCampoDigitado(), "Informe um CPF válido!" )
        
        let verificaUltimoNumero = CPF(numeroConsultado: "86249075517")
        XCTAssertEqual(verificaUltimoNumero.resultadoCampoDigitado(), "Informe um CPF válido!")
        
        let verificaNumerosIguaisCpf = CPF(numeroConsultado: "00000000000")
        XCTAssertEqual(verificaNumerosIguaisCpf.resultadoCampoDigitado(), "Informe um CPF ou CNPJ válido!")
        
    }

}
