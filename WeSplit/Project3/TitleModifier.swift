//
//  TitleModifier.swift
//  WeSplit
//
//  Created by Alejandro Vicente Milán on 12/02/2020.
//  Copyright © 2020 Alejandro Vicente Milán. All rights reserved.
//

import SwiftUI

struct TitleModifier: ViewModifier {
    func body(content: Content) -> some View {
        content
            .font(.largeTitle)
            .padding()
            .foregroundColor(.white)
            .background(Color.blue)
            .clipShape(Capsule())
    }
}


