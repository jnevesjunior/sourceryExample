//
//  Client.swift
//  SourceryExample
//
//  Created by Jose de Arimateia Neves Junior on 03/06/23.
//

import Foundation

public struct Client: Codable {

    public let id: Int
    public let name: String
    public let age: Int
    public let isFistAccess: Bool
    public let address: Address
}
