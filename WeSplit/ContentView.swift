//
//  ContentView.swift
//  WeSplit
//
//  Created by Alejandro Vicente Milán on 12/02/2020.
//  Copyright © 2020 Alejandro Vicente Milán. All rights reserved.
//

import SwiftUI

struct ContentView: View {
    
    private var tutorials = ["WeSplit", "Guess the Flag", "Views and Modifiers", "BetterRest", "Word Scramble", "Animation", "iExpense", "Moonshot", "Drawing", "Cupcake Corner"]
    @State private var showModal = false
    @State private var modalSelection = 1
    
    var body: some View {
        NavigationView {
            List {
                ForEach(1 ..< 11, id: \.self) { number in
                    Button(action: {
                        self.modalSelection = number
                        self.showModal = true
                    }) {
                        HStack {
                            Image(systemName: "\(number).circle")
                            Spacer()
                            Text("\(self.tutorials[number-1])")
                        }
                    }
                }
            }
            .navigationBarTitle("Tutorials")
            .sheet(isPresented: $showModal, content: {
                if self.modalSelection == 1 {
                    Project1()
                }

                if self.modalSelection == 2 {
                    Project2()
                }

                if self.modalSelection == 3 {
                    Project3()
                }
                
                if self.modalSelection == 4 {
                    Project4()
                }
                
                if self.modalSelection == 5 {
                    Project5()
                }
                
                if self.modalSelection == 6 {
                    Project6()
                }
                
                if self.modalSelection == 7 {
                    Project7()
                }
                
                if self.modalSelection == 8 {
                    Project8()
                }
                
                if self.modalSelection == 9 {
                    Project9()
                }
                
                if self.modalSelection == 10 {
                    Project10()
                }
            })
        }
    }
}

struct ContentView_Previews: PreviewProvider {
    static var previews: some View {
        ContentView()
    }
}
