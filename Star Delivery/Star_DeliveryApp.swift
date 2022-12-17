//
//  Star_DeliveryApp.swift
//  Star Delivery
//
//  Created by Ajin on 17/12/22.
//

import SwiftUI

@main
struct Star_DeliveryApp: App {
    let persistenceController = PersistenceController.shared

    var body: some Scene {
        WindowGroup {
            ContentView()
                .environment(\.managedObjectContext, persistenceController.container.viewContext)
        }
    }
}
