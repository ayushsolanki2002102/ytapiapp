//
//  FeedView.swift
//  ytapiapp
//
//  Created by Ayush Solanki on 26/12/24.
//

import SwiftUI

struct FeedView: View {
    
    @State private var videos = [Video]()
    @State private var selectedVideo: Video?
    
    var body: some View {
        List(videos) { v in
            VideoRowView(video: v)
                .onTapGesture {
                    selectedVideo = v
                }
                .listRowSeparator(.hidden)
        }
        .listStyle(.plain)
        .scrollIndicators(.hidden)
        .padding()
        
            .task{
                self.videos = await DataService().getVideo()
              
            }
            .sheet(item: $selectedVideo) { v in
                VideoDetailView(video: v)
                
            }
    }
}

#Preview {
    FeedView()
}
