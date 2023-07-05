// Generated using Sourcery 2.0.2 — https://github.com/krzysztofzablocki/Sourcery
// DO NOT EDIT

//
//  SourceryExampleModels+mock.swift
//  SourceryExampleTests
//
//  Created by Sourcery on xx/xx/xx.
//

import Foundation

@testable import SourceryExample

// MARK: - Generated Address

extension Address {

    static func mock(
        street: String = "",
        city: String = "",
        state: String = "",
        homeNumber: Int = 0,
        postalCode: String = ""
    ) -> Address {
        .init(
            street: street,
            city: city,
            state: state,
            homeNumber: homeNumber,
            postalCode: postalCode
        )
    }
}

// MARK: - Generated Client

extension Client {

    static func mock(
        id: Int = 0,
        name: String = "",
        age: Int = 0,
        isFistAccess: Bool = false,
        address: Address = 
    ) -> Client {
        .init(
            id: id,
            name: name,
            age: age,
            isFistAccess: isFistAccess,
            address: address
        )
    }
}
