//
//  Project3.swift
//  WeSplit
//
//  Created by Alejandro Vicente Milán on 12/02/2020.
//  Copyright © 2020 Alejandro Vicente Milán. All rights reserved.
//

import SwiftUI

struct Project3: View {
    
    let first = CapsuleText(text: "First")
    let second = CapsuleText(text: "Second")
    let third = Text("Third")
    
    var body: some View {
        VStack(spacing: 10) {
            first.colorInvert()
            second
            third.modifier(TitleModifier())
        }
    }
}

struct Project3_Previews: PreviewProvider {
    static var previews: some View {
        Project3()
    }
}
