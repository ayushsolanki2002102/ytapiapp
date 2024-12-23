//
//  HomeView.swift
//  ytapiapp
//
//  Created by Ayush Solanki on 23/12/24.
//

import SwiftUI

struct HomeView: View {
    var body: some View {
        TabView {
            FeedView()
        }
        .padding()
    }
}

#Preview {
    HomeView()
}
