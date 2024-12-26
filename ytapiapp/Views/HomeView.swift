//
//  HomeView.swift
//  ytapiapp
//
//  Created by Ayush Solanki on 26/12/24.
//

import SwiftUI

struct HomeView: View {
    var body: some View {
        TabView {
            FeedView()
                .tabItem{
                    Image(systemName: "play.square.stack")
                    Text("Feed")
                    
                    
                }
        }
        .padding()
       
    }
}

#Preview {
    HomeView()
}
