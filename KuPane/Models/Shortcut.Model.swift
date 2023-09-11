//
//  Model/Shortcut.swift
//  KuPane
//
//  Created by kuku on 2023/9/11.
//

import Foundation
import AppKit

typealias ShortcutKey = UInt16

struct Shortcut: Codable, Hashable {
    var key: ShortcutKey
    var modifiers: [ModifierKey]
    var description: String
    
    init(key: ShortcutKey, modifiers: [ModifierKey]) {
        self.key = key
        self.modifiers = modifiers
        self.description = Keycode.description(for: key)
        
        for modifier in modifiers {
            switch modifier {
            case .command: self.description += "+\(Keycode.description(for: Keycode.command))"
            case .option: self.description += "+\(Keycode.description(for: Keycode.option))"
            case .control: self.description += "+\(Keycode.description(for: Keycode.control))"
            case .shift: self.description += "+\(Keycode.description(for: Keycode.shift))"
            }
        }
    }
    
    func hash(into hasher: inout Hasher) {
        hasher.combine(key)
        hasher.combine(modifiers)
    }
}

extension Shortcut {
    var SystemModifierFlags: NSEvent.ModifierFlags {
        return modifiers.reduce([]) { (result, key) -> NSEvent.ModifierFlags in
            switch key {
            case .command: return result.union(.command)
            case .option: return result.union(.option)
            case .control: return result.union(.control)
            case .shift: return result.union(.shift)
            }
        }
    }
    
    func matches(key: ShortcutKey, modifiers: [ModifierKey]) -> Bool {
        return self.key == key && Set(self.modifiers) == Set(modifiers)
    }
}
