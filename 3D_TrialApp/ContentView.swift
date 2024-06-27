//
//  ContentView.swift
//  3D_TrialApp
//
//  Created by Waqar Azim on 27/06/24.
//

import SwiftUI
import Spineruntime
struct ContentView: View {
    var body: some View {
        VStack {
            Onboard3DView().foregroundColor(.secondary)
                .ignoresSafeArea().frame(height: 500)
            
            VStack(){
                Text("Build Your Brand")
                    .font(.title.bold()).frame(height: 90)
                Text("Stay up to date with all your social media platforms in one simple app.").foregroundStyle(.secondary).padding().bold()
            Spacer()
                Button("Get Started"){
                    
                }
                .buttonStyle(.borderedProminent).tint(.pink)
                Spacer()
            }
        }
        
    }
}

#Preview {
    ContentView()
}

struct Onboard3DView: View{
    var body: some View{
        // fetching from cloud
               let url = URL(string: "pending...")!

               // // fetching from local
               // let url = Bundle.main.url(forResource: "scene", withExtension: "splineswift")!

               SplineView(sceneFileURL: url)
    }
}
