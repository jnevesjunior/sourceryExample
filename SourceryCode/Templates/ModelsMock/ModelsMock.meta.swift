//
//  ModelsMock.meta.swift
//  Sourcery
//
//  Created by Jose de Arimateia Neves Junior on 03/06/23.
//

import Foundation
import SourceryRuntime

let autoMockableProtocolName = "Codable"

private let models: [Struct] = {
    types.structs.filter {
        $0.inheritedTypes.contains(autoMockableProtocolName)
    }
}()


private func generateMock() -> String {
    let stringMocks = models.map {
        var varNames = [String]()

        let paramsLines = $0.rawVariables.map {

            varNames.append($0.name)

            return "\($0.name): \($0.typeName.name) = \(mockParam(variable: $0))"
        }

        return """
// MARK: - Generated \($0.name)

extension \($0.name) {

    static func mock(
        \(paramsLines.joined(separator: ",\n        "))
    ) -> \($0.name) {
        .init(
            \(varNames.map { "\($0): \($0)" }.joined(separator: ",\n            "))
        )
    }
}
"""
    }

    return stringMocks.joined(separator: "\n\n")
}

// MARK: - Output

func generateModelsMockOutput() -> String {
"""
//
//  \(projectName)Models+mock.swift
//  \(projectName)Tests
//
//  Created by Sourcery on xx/xx/xx.
//

import Foundation

@testable import \(projectName)

\(generateMock())
"""
}

