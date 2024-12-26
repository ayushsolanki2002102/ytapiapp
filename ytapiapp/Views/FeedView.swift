//
//  FeedView.swift
//  ytapiapp
//
//  Created by Ayush Solanki on 26/12/24.
//

import SwiftUI

struct FeedView: View {
    
    @State private var videos = [Video]()
    
    var body: some View {
        Text(/*@START_MENU_TOKEN@*/"Hello, World!"/*@END_MENU_TOKEN@*/)
            .task{
                self.videos = await DataService().getVideo()
              
            }
    }
}

#Preview {
    FeedView()
}
