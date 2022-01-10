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

    var shortDate: String {
        let parser = DateFormatter()
        parser.dateFormat = "yyyy-MM-dd'T'HH:mm:ss.SSS'Z'"

        let fmt = DateFormatter()
        fmt.dateStyle = .short

        if let matter = matter,
           let introduced = matter.introducedAt {
            if let date = parser.date(from: introduced) {
                return fmt.string(from: date)
            }
        }

        return ""
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
                Text("Introduced: \(shortDate)")
            }
                    .font(.subheadline)
                    .foregroundColor(.secondary)

            Divider()

            Text(matter?.longDescription ?? "No description provided")
        }
                .padding()
        Spacer()

    }
}

