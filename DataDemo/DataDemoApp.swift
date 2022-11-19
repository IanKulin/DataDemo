//
//  DataDemoApp.swift
//  DataDemo
//
//  Created by Ian Bailey on 18/11/2022.
//

import SwiftUI

@main
struct DataDemoApp: App {

    @StateObject private var dataController = DataController()

    var body: some Scene {
        WindowGroup {
            ContentView()
                .environment(\.managedObjectContext, dataController.container.viewContext)
        }
    }
}
