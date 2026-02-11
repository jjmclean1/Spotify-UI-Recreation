//
//  ContentView.swift
//  Spotify
//
//  Created by Julian Mclean on 2/11/26.
//

import SwiftUI

struct ContentView: View {
    @State private var time: Double = 0
    var body: some View {
        VStack {
            HStack{
                Image(systemName: "chevron.down")
                  Spacer()
                  Text("Is This It")
                    .font(.system(.caption, design: .rounded, weight: .medium))
                  Spacer()
                  Image(systemName: "ellipsis")
            }
            .padding(.top, -65)
            .padding(.horizontal)
            
            Image("THE_STROKES")
                .resizable()
                .scaledToFit()
                .padding(.horizontal)
            HStack{
                VStack(alignment: .leading){
                    Text("Soma")
                        .font(.system(.title2, design: .rounded, weight: .medium))
                    Text("The Strokes")
                        .font(.system(.body, design: .rounded))
                        .foregroundStyle(.white.opacity(0.6))
                }
                .padding(.horizontal)
                Spacer()
                Image(systemName: "plus.circle")
                    .padding (.horizontal)
                    .font(.title)
            }
            .padding(.top, 40)
            Slider(value: $time, in: 0...153)
                .padding(.horizontal)
            HStack{
                Text("0:00")
                Spacer()
                Text("2:33")
            }
            .font(.caption)
            .padding(.horizontal)
            HStack{
                Spacer()
                Image(systemName: "shuffle")
                    .font(.system(size: 20))
                Spacer()
                Image(systemName: "backward.end.fill")
                Spacer()
                Image(systemName: "play.circle.fill")
                    .imageScale(.large)
                    .font(.system(size: 40))
                Spacer()
                Image(systemName: "forward.end.fill")
                Spacer()
                Image(systemName: "arrow.trianglehead.rectanglepath")
                    .font(.system(size: 20))
                Spacer()
            }
            .font(.title)
            HStack{
                Image(systemName: "tv.and.hifispeaker.fill")
                Spacer()
                Image(systemName: "square.and.arrow.up")
                Image(systemName: "line.3.horizontal")
            }
            .padding(.horizontal)
            .padding(.top)
        }
        .background(
            LinearGradient(gradient: Gradient(colors: [
                Color(red: 0.1, green: 0.25, blue: 0.2),
                Color(red: 0.05, green: 0.12, blue: 0.1)
            ]), startPoint: .top, endPoint: .bottom)
                .frame(width: 3000, height: 1500))
        .foregroundStyle(.white)
        .font(.system(.body, design: .rounded, weight: .semibold))
    }
    
}

#Preview {
    ContentView()
}
