//
//  ContentView.swift
//  RotationTutorial
//
//  Created by Seungchul Ha on 2023/02/11.
//

import SwiftUI

struct ContentView: View {
	
	@State private var degrees = 0.0
	
    var body: some View {
		VStack {
			Spacer()
			
			LinearGradient(gradient: Gradient(colors: [.red, .blue]), startPoint: .topLeading, endPoint: .bottomTrailing)
				.frame(width: 300, height: 200)
				.cornerRadius(10)
				.rotation3DEffect(.degrees(degrees), axis: (x: 1, y: 1, z: 1))
			
			Spacer()
			
			Slider(value: $degrees, in: 0...1080)
				.padding()
			
			Button("Animate") {
				withAnimation {
					self.degrees += 180
				}
			}
		}
    }
}

struct ContentView_Previews: PreviewProvider {
    static var previews: some View {
        ContentView()
    }
}
