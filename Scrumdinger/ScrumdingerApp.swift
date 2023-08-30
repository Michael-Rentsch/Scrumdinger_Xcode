//
//  ScrumdingerApp.swift
//  Scrumdinger
//
//  Created by Michael Rentsch on 2023/08/20.
//

import SwiftUI

@main
struct ScrumdingerApp: App {
    var body: some Scene {
        WindowGroup {
            ScrumsView(scrums: DailyScrum.sampleData)
        }
    }
}
