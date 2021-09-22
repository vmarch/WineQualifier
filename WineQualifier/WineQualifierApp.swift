//
//  WineQualifierApp.swift
//  WineQualifier
//
//  Created by Student on 22.09.21.
//

import SwiftUI

@main
struct WineQualifierApp: App {
    @StateObject var vm:ViewModel = ViewModel()
    var body: some Scene {
        WindowGroup {
            ContentView()
                .environmentObject(vm)
        }
    }
}
