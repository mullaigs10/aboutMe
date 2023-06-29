//
//  ContentView.swift
//  App 2
//
//  Created by Scholar on 6/22/23.
//

import SwiftUI

struct ContentView: View {
    @State private var name = ""
    @State private var textTitle = ("I am 15 years old and will be a sophmore next year. I love the read specifcally romance, fiction, and mystery. I also have a concerning obsession with Disney.")
    var body: some View {
        ZStack {
            Color(.systemMint)
                .ignoresSafeArea()
            VStack(alignment: .leading, spacing: 20.0) {
                Image("meee")
                    .resizable()
                    .aspectRatio(contentMode: .fit)
                    .cornerRadius(15)
                
                HStack(spacing: 40.0) {
                    Text("Mullai S.")
                        .font(.title)
                        .fontWeight(.bold)
                    
                    Text("The Coolest Person You Know")
                }
                
                Text(textTitle).font(.headline)
                
                Text("Would you like to learn more about Mullai?").foregroundColor(Color.gray) .border(Color .gray, width: 1)
                
                Button("Click Here") {
                    textTitle = "She also has a concerning obsession with Disney."
                }
                .font(.title2)
                .buttonStyle(.borderedProminent)
                .tint(.teal).multilineTextAlignment(.center)
            }
            .padding()
            .background(Rectangle()
                .foregroundColor(.white))
            .cornerRadius(15)
            .shadow(radius: 15)
            .padding() }
    }
}

    
    
    struct ContentView_Previews: PreviewProvider {
        static var previews: some View {
            ContentView()
        }
        
    }
