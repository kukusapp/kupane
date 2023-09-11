//
//  Layout.ViewModel.swift
//  KuFlex
//
//  Created by kuku on 2023/9/6.
//

import Foundation

class LayoutViewModel: ObservableObject {
    private var layoutService: LayoutService
    
    @Published var layouts: [Layout] = []

    init(layoutService: LayoutService) {
        self.layoutService = layoutService
        self.layouts = layoutService.getLayouts()
    }

    func applyLayout(layout: Layout) {
        layoutService.apply(layout: layout)
    }
}
