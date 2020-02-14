//
//  Expenses.swift
//  WeSplit
//
//  Created by Alejandro Vicente Milán on 14/02/2020.
//  Copyright © 2020 Alejandro Vicente Milán. All rights reserved.
//

import Foundation

class Expenses: ObservableObject {
    @Published var items = [ExpenseItem]() {
        didSet {
            let encoder = JSONEncoder()
            
            if let encoded = try? encoder.encode(items) {
                UserDefaults.standard.set(encoded, forKey: "Expenses")
            }
        }
    }
    
    init() {
        if let items = UserDefaults.standard.data(forKey: "Expenses") {
            let decoder = JSONDecoder()
            
            if let decoded = try? decoder.decode([ExpenseItem].self, from: items) {
                self.items = decoded
                return
            }
        }
        
        self.items = []
    }
}
