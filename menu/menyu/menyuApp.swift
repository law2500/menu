//
//  menyuApp.swift
//  menyu
//
//  Created by law2500 on 2021/11/05.
//

import SwiftUI

@main
struct menyuApp: App {
    var body: some Scene {
        WindowGroup {
            ContentView(menu: menu)
                .environmentObject(Number())
        }
    }
}
