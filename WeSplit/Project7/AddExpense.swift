//
//  AddExpense.swift
//  WeSplit
//
//  Created by Alejandro Vicente Milán on 14/02/2020.
//  Copyright © 2020 Alejandro Vicente Milán. All rights reserved.
//

import SwiftUI

struct AddExpense: View {
    @Environment(\.presentationMode) var presentationMode
    @ObservedObject var expenses: Expenses
    
    @State private var name = ""
    @State private var type = "Personal"
    @State private var amount = ""
    
    static let types = ["Personal", "Business"]
    
    var body: some View {
        NavigationView {
            Form {
                TextField("Name", text: $name)
                
                Picker("Type", selection: $type) {
                    ForEach(Self.types, id: \.self) {
                        Text($0)
                    }
                }
                
                TextField("Amount", text: $amount)
                    .keyboardType(.numberPad)
            }
            .navigationBarTitle("Add new expense")
            .navigationBarItems(trailing:
                Button("Save") {
                    if let actualAmount = Int(self.amount) {
                        let item = ExpenseItem(name: self.name, type: self.type, amount: actualAmount)
                        self.expenses.items.append(item)
                        
                        self.presentationMode.wrappedValue.dismiss()
                    }
                }
            )
        }
    }
}

struct AddExpense_Previews: PreviewProvider {
    static var previews: some View {
        AddExpense(expenses: Expenses())
    }
}
