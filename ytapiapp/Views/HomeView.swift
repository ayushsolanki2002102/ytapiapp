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
        }
        .padding()
        .onAppear(perform: {
            print(Bundle.main.infoDictionary ?? ["API_KEY"] as? String ?? "cant find it")
        })
       
    }
}

#Preview {
    HomeView()
}
