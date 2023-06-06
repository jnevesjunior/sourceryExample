//
//  Address.swift
//  SourceryExample
//
//  Created by Jose de Arimateia Neves Junior on 03/06/23.
//

import Foundation

public struct Address: Codable {

    public let street: String
    public let city: String
    public let state: String
    
    // sourcery: customMock = ".random(in: 0..<100)"
    public let homeNumber: Int
    
    // sourcery: customMock = ""00000-000""
    public let postalCode: String
}
