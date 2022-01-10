//
// Created by Harrison Borges on 1/9/22.
//

import SwiftUI

struct MattersListRowView: View {
    let matter: MatterShort

    var lastUpdated: String {
        let formatter = DateFormatter()
//        formatter.dateStyle = .short
        formatter.dateFormat = "yyyy-MM-dd'T'HH:mm:ss.SSS'Z'"

        if let date = formatter.date(from: matter.postDate) {
            return date.timeAgoDisplay()
        }

        return ""
    }

    var body: some View {
        VStack(alignment: .leading) {
            HStack {
                VStack(alignment: .leading) {
                    Text(matter.committeeName)
                            .font(.title2)
                    Text(matter.fileNumber)
                            .font(.subheadline)
                            .foregroundColor(.secondary)
                }.fixedSize(horizontal: false, vertical: true)
                Spacer()
                Text(lastUpdated)
                        .font(.caption)
            }.padding(.bottom, 5.0)

            Text(matter.shortDescription)
                    .minimumScaleFactor(0.5)

            MatterStatusView(status: matter.status)
        }
    }
}