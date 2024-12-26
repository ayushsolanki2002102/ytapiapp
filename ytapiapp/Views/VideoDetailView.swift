//
//  VideoDetailView.swift
//  ytapiapp
//
//  Created by Ayush Solanki on 26/12/24.
//

import SwiftUI
import YouTubePlayerKit

struct VideoDetailView: View {
    
    var video: Video
    
    var body: some View {
        
        GeometryReader{ proxy in
            
            VStack(alignment: .leading){
                
                // configure video player
                let youTubePlayer = YouTubePlayer(
                    source: .video(id: video.snippet?.resourceID?.videoId ?? ""),
                    configuration: .init(
                        autoPlay: false
                    )
                )
                
                // video player
                YouTubePlayerView(youTubePlayer)
                    .frame(width: proxy.size.width, height: proxy.size.width/1.77778)
                
                
                // title and description
                ScrollView {
                    VStack(alignment: .leading, spacing: 30) {
                        Text(video.snippet?.title ?? "")
                            .font(.headline)
                            .bold()
                        
                        Text(video.snippet?.description ?? "")
                            
                        
                    }
                }
                .scrollIndicators(.hidden)
                .padding()
                
                
            }
            
        }
        
        
    }
}
