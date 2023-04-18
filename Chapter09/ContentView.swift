//
//  ContentView.swift
//  Chapter09
//
//  Created by Mike Panitz on 4/16/23.
//

import SwiftUI

struct ContentView: View {
    var body: some View {
        TabView {
            DemoView()
                .tabItem {
                    Image(systemName: "1.circle")
                    Text("Demos")
                }
            Exercise()
                .tabItem {
                    Image(systemName: "2.circle")
                    Text("Exercise")
                }
        }
        .padding()
    }
}

struct ContentView_Previews: PreviewProvider {
    static var previews: some View {
        ContentView()
    }
}
