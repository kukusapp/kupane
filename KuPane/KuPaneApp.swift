//
//  KuPaneApp.swift
//  KuPane
//
//  Created by kuku on 2023/9/11.
//

import SwiftUI

@main
struct KuPaneApp: App {
    var StatusBarManagementService: StatusBarManagementService
    var KeyboardListenerService: KeyboardListenerService
    
    var layoutService: LayoutService
    var layoutViewModel: LayoutViewModel
    
    init() {
        DispatchQueue.main.async {
            NSApp.setActivationPolicy(.accessory)
        }
        
        let layoutService = LayoutService()
        self.layoutService = layoutService
        
        let layoutViewModel = LayoutViewModel(layoutService: layoutService)
        self.layoutViewModel = layoutViewModel
        
        self.KeyboardListenerService = KuPane.KeyboardListenerService(viewModel: layoutViewModel)
        self.StatusBarManagementService = KuPane.StatusBarManagementService(viewModel: layoutViewModel)
    }
    
    var body: some Scene {
        WindowGroup {
            HomePage()
        }.windowResizabilityContentSize()
    }
}

extension Scene {
    func windowResizabilityContentSize() -> some Scene {
        if #available(macOS 13.0, *) {
            return windowResizability(.contentSize)
        } else {
            return self
        }
    }
}
