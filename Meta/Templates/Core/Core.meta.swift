//
//  Core.meta.swift
//  SourceryExample
//
//  Created by Jose de Arimateia Neves Junior on 03/06/23.
//

import Foundation
import SourceryRuntime

var projectName: String {
    (argument["projectName"] as? String) ?? ""
}
