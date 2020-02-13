//
//  Project6.swift
//  WeSplit
//
//  Created by Alejandro Vicente Milán on 13/02/2020.
//  Copyright © 2020 Alejandro Vicente Milán. All rights reserved.
//

import SwiftUI

struct Project6: View {
    
    let animationGesture = AnimationGesture()
    let animationTransition = AnimationTransition()
    
    var body: some View {
        VStack {
            animationGesture
            animationTransition
        }
    }
}

struct Project6_Previews: PreviewProvider {
    static var previews: some View {
        Project6()
    }
}
