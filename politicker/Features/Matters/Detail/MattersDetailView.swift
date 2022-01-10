//
// Created by Harrison Borges on 1/9/22.
//

import SwiftUI
import Apollo


struct MatterDetailView: View {
    @StateObject private var query: SingleQuery<MatterQuery>

    var matter: MatterFull? {
        query.data?.matter.fragments.matterFull
    }

    init(_ id: GraphQLID) {
        _query = StateObject(wrappedValue: SingleQuery(query: MatterQuery(id: id)))
    }

    var body: some View {
        VStack(alignment: .leading) {
            Text(matter?.committeeName ?? "----")
                    .font(.title)

            HStack {
                Text(matter?.fileNumber ?? "----")
                Spacer()
                Text("Introduced: \(matter?.introducedAt ?? "----")")
            }
                    .font(.subheadline)
                    .foregroundColor(.secondary)

            Divider()

            Text(matter?.longDescription ?? "No description provided")
        }.padding()
        Spacer()

    }
}

