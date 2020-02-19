//
//  Astronaut.swift
//  WeSplit
//
//  Created by Alejandro Vicente Milán on 19/02/2020.
//  Copyright © 2020 Alejandro Vicente Milán. All rights reserved.
//

import Foundation

struct Astronaut: Codable, Identifiable {
    let id: String
    let name: String
    let description: String
}

struct CrewMember {
    let role: String
    let astronaut: Astronaut
}
