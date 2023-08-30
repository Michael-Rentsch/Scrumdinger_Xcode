//
//  ScrumsView.swift
//  Scrumdinger
//
//  Created by Michael Rentsch on 2023/08/23.
//

import SwiftUI

struct ScrumsView: View {
    
    let scrums: [DailyScrum]
    
    var body: some View {
        NavigationStack {
            List(scrums) { scrum in
                NavigationLink(destination: DetailView(scrum: scrum)) {CardView(scrum: scrum)
                        
                }
                .listRowBackground(scrum.theme.MainColor)
            }
            .navigationTitle("Daily Scrums")
            .toolbar {
                Button(action: {}){
                    Image(systemName: "plus")
                    
                }
                .accessibilityLabel("New Scrum")
            }
        }
    }
}

struct ScrumsView_Previews: PreviewProvider {
    static var previews: some View {
        ScrumsView(scrums: DailyScrum.sampleData)
    }
}
