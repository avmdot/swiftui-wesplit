//
//  ExpenseItem.swift
//  WeSplit
//
//  Created by Alejandro Vicente Milán on 14/02/2020.
//  Copyright © 2020 Alejandro Vicente Milán. All rights reserved.
//

import Foundation

struct ExpenseItem: Identifiable, Codable {
    let id = UUID()
    let name: String
    let type: String
    let amount: Int
}
