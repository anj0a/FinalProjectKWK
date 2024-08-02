//
//  FinalProjectP1App.swift
//  FinalProjectP1
//
//  Created by Scholar on 7/31/24.
//

import SwiftUI
import SwiftData

@main
struct to_do_listApp: App {
    var body: some Scene {
        WindowGroup {
            ContentView()
                .modelContainer(for: ToDoItem.self)
            //on app page, it tells it uses swift data and uses model container to contain the todoitem class
        }
    }
}
