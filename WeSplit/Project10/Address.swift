//
//  Address.swift
//  WeSplit
//
//  Created by Alejandro Vicente Milán on 19/02/2020.
//  Copyright © 2020 Alejandro Vicente Milán. All rights reserved.
//

import Foundation

class Address: ObservableObject {
    
    @Published var name = ""
    @Published var streetAddress = ""
    @Published var city = ""
    @Published var zip = ""
    
    var hasValidAddress: Bool {
        if name.isEmpty || streetAddress.isEmpty || city.isEmpty || zip.isEmpty {
            return false
        }
        return true
    }
}
