//
//  ResultadoCNPJ.swift
//  ValidaCPFeCNPJTests
//
//  Created by Renilson Moreira Ferreira on 21/05/21.
//

import XCTest
@testable import ValidaCPFeCNPJ
class CalculoValidaCNPJTests: XCTestCase {

    override func setUpWithError() throws {
    }

    override func tearDownWithError() throws {
    }
    
    func testDeveVerificarRetornoDaFuncaoCalculoCNPJ(){
    
        let cnpjCorreto = CNPJ(numeroConsultado: "52883546000131")
        XCTAssertEqual(cnpjCorreto.resultadoCampoDigitado(), "CNPJ Válido!")
        
        let verificaPenultimoNumero = CNPJ(numeroConsultado: "52883546000181")
        XCTAssertEqual(verificaPenultimoNumero.resultadoCampoDigitado(), "Informe um CNPJ válido!" )
        
        let verificaUltimoNumero = CNPJ(numeroConsultado: "52883546000134")
        XCTAssertEqual(verificaUltimoNumero.resultadoCampoDigitado(), "Informe um CNPJ válido!")
        
        let verificaNumerosIguaisCnpj = CNPJ(numeroConsultado: "00000000000000")
        XCTAssertEqual(verificaNumerosIguaisCnpj.resultadoCampoDigitado(), "Informe um CPF ou CNPJ válido!")
        
    }
    
}
