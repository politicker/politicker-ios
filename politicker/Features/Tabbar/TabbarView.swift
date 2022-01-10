//
// Created by Harrison Borges on 1/10/22.
//

import SwiftUI

struct TabbarView: View {
    var body: some View {
        TabView {
            MattersListView()
                    .tabItem {
                        Image(systemName: "house")
                    }
                    .tag(1)
                    .padding(.leading, 10.0)
                    .padding(.trailing, 10.0)
            Text("Settings").tabItem {
                        Image(systemName: "gear")
                    }
                    .tag(2)
        }
                .accentColor(.black)
    }
}
