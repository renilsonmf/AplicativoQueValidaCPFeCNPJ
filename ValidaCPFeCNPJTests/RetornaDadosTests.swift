//
//  RetornaDadosTests.swift
//  ValidaCPFeCNPJTests
//
//  Created by Renilson Moreira Ferreira on 21/05/21.
//

import XCTest
@testable import ValidaCPFeCNPJ
class RetornaDadosTests: XCTestCase {

    override func setUpWithError() throws {
    }

    override func tearDownWithError() throws {
    }

    func testRetornoDosDadosCalculados(){

        let retornoDados = RetornaDados()

        let textoCpf = retornoDados.dados(textoCpfCnpj: "86249075518")
        XCTAssertEqual(textoCpf.numeroConsultado.count, 11)
        
        let textoCnpj = retornoDados.dados(textoCpfCnpj: "52883546000131")
        XCTAssertEqual(textoCnpj.numeroConsultado.count, 14)

        let falhaCpf = retornoDados.dados(textoCpfCnpj: "8624907551")
        XCTAssertEqual(falhaCpf.numeroConsultado.count, 10)

        let falhaCnpj = retornoDados.dados(textoCpfCnpj: "528835460001318")
        XCTAssertEqual(falhaCnpj.numeroConsultado.count, 15)
        
        XCTAssertEqual(textoCnpj.resultadoCampoDigitado(), "CNPJ Válido!")
        XCTAssertEqual(textoCpf.resultadoCampoDigitado(), "CPF Válido!")
    }

}
