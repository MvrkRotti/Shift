//
//  Item.swift
//  Shift
//
//  Created by Данил Пестов on 13.07.2026.
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
