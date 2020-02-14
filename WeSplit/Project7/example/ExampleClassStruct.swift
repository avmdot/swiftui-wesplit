//
//  ExampleClassStruct.swift
//  WeSplit
//
//  Created by Alejandro Vicente Milán on 14/02/2020.
//  Copyright © 2020 Alejandro Vicente Milán. All rights reserved.
//

import SwiftUI

struct ExampleClassStruct: View {
    @ObservedObject private var userClass = UserClass()
    @State private var userStruct = UserStruct()
    
    var body: some View {
        VStack {
            Text("Your name is: \(userClass.firstName) \(userClass.lastName)")
            TextField("First name", text: $userClass.firstName)
            TextField("Last name", text: $userClass.lastName)
            
            Text("Your name is: \(userStruct.firstName) \(userStruct.lastName)")
            TextField("First name", text: $userStruct.firstName)
            TextField("Last name", text: $userStruct.lastName)
        }
    }
}

struct ExampleClassStruct_Previews: PreviewProvider {
    static var previews: some View {
        ExampleClassStruct()
    }
}
