//
//  Layout.Service.swift
//  KuFlex
//
//  Created by kuku on 2023/9/6.
//

import AppKit
import Foundation
import SwiftUI

class LayoutService {
    func getLayouts() -> [Layout] {
        // todo user customize feature, cloud save feature
        return defaultLayouts
    }
    
    func apply(layout: Layout) {
        guard let activeApp = NSWorkspace.shared.frontmostApplication else { return }
        let pid = activeApp.processIdentifier
        let appElement = AXUIElementCreateApplication(pid)
        
        var value: AnyObject?
        let result = AXUIElementCopyAttributeValue(
            appElement, kAXFocusedWindowAttribute as CFString, &value)
        
        guard result == .success else { return }
        let windowElement = value as! AXUIElement
        
        var origin = layout.rect.origin
        if let newPosition = AXValueCreate(AXValueType.cgPoint, &origin) {
            AXUIElementSetAttributeValue(windowElement, kAXPositionAttribute as CFString, newPosition)
        }
        
        var size = layout.rect.size
        if let newSize = AXValueCreate(AXValueType.cgSize, &size) {
            AXUIElementSetAttributeValue(windowElement, kAXSizeAttribute as CFString, newSize)
        }
    }
}
