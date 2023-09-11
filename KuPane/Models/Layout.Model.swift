//
//  Model/Layout.swift
//  KuPane
//
//  Created by kuku on 2023/9/6.
//

import Foundation
import AppKit

struct Layout: Codable, Hashable {
    var id: UUID = UUID()
    var name: String
    var rect: CGRect
    var shortcut: Shortcut
    
    func hash(into hasher: inout Hasher) {
        hasher.combine(id)
        hasher.combine(name)
        hasher.combine(rect.minX)
        hasher.combine(rect.minY)
        hasher.combine(rect.width)
        hasher.combine(rect.height)
        hasher.combine(shortcut)
    }
}
