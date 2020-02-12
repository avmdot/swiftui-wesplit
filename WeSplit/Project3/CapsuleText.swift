//
//  CapsuleText.swift
//  WeSplit
//
//  Created by Alejandro Vicente Milán on 12/02/2020.
//  Copyright © 2020 Alejandro Vicente Milán. All rights reserved.
//

import SwiftUI

struct CapsuleText: View {
    var text: String
    
    var body: some View {
        Text(text)
            .font(.largeTitle)
            .padding()
            .foregroundColor(.white)
            .background(Color.blue)
            .clipShape(Capsule())
    }
}

struct CapsuleText_Previews: PreviewProvider {
    static var previews: some View {
        CapsuleText(text: "Example")
    }
}
