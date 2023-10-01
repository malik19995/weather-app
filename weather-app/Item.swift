//
//  Item.swift
//  weather-app
//
//  Created by Hamza Ahmad on 01/10/2023.
//

import Foundation
import SwiftData

@Model
final class Item {
    var timestamp: Date
    
    init(timestamp: Date) {
        self.timestamp = timestamp
    }
}
