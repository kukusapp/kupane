//
//  Model/ModifierKey.swift
//  KuPane
//
//  Created by kuku on 2023/9/11.
//

import Foundation
import AppKit

enum ModifierKey: String, Codable, Hashable {
    case command, option, control, shift
}

extension NSEvent.ModifierFlags {
    var modifierKeys: [ModifierKey] {
        var keys: [ModifierKey] = []
        if contains(.command) {
            keys.append(.command)
        }
        if contains(.option) {
            keys.append(.option)
        }
        if contains(.control) {
            keys.append(.control)
        }
        if contains(.shift) {
            keys.append(.shift)
        }
        return keys
    }
}
