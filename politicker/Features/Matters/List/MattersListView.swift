//
// Created by Harrison Borges on 1/9/22.
//

import SwiftUI

struct MattersListView: View {
    @StateObject private var data = MattersListViewModel()

    var body: some View {
        NavigationView {
            List {
                ForEach(data.matters ?? [], id: \.id) { matter in
                    NavigationLink(
                            destination: MatterDetailView(matter.id),
                            label: {
                                    MattersListRowView(matter: matter)
                                            .listRowSeparator(.visible, edges: .bottom)
                            })
                }
            }
                    .listStyle(.plain).refreshable {
                        data.fetchMatters()
                    }
                    .navigationTitle("Matters")
                    .onAppear {
                        data.fetchMatters()
                    }
        }
    }
}

