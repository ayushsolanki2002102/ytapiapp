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
        List(videos) { v in
            Text(v.snippet?.title ?? "Title")
            
        }
            .task{
                self.videos = await DataService().getVideo()
              
            }
    }
}

#Preview {
    FeedView()
}
