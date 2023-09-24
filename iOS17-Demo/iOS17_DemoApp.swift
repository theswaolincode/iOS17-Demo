//
//  iOS17_DemoApp.swift
//  iOS17-Demo
//
//  Created by Daniel Ayala on 23/9/23.
//

import SwiftUI

@main
struct iOS17_DemoApp: App {
    @State var viewModel = ViewModel()
    
    var body: some Scene {
        WindowGroup {
            ContentView()
                .environment(viewModel)
        }
    }
}
