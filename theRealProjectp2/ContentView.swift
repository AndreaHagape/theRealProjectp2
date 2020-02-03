//
//  ContentView.swift
//  theRealProjectp2
//
//  Created by HAGAPE, ANDREA on 2/3/20.
//  Copyright © 2020 HAGAPE, ANDREA. All rights reserved.
//

import SwiftUI

struct ContentView: View {
    var body: some View {
       
        ZStack {
            Color.green
                .edgesIgnoringSafeArea(.all)
        VStack{
        Text("Band Audition Sorter")
            .font(.title)
            .foregroundColor(Color.white)
            Spacer()
       
            Button(action: {
            
            }) {
             Text("Freshman Percussion")
                 .multilineTextAlignment(.center)
               
             
            }
            Button(action: {
            
            }) {
             Text("Freshman Wind")
                 .multilineTextAlignment(.center)
                
             
            }
            Button(action: {
            
            }) {
             Text("Freshman Brass")
                 .multilineTextAlignment(.center)
               
             
            }
        }
    }
    }
    }
struct ContentView2: View {
var body: some View {
        Text("Freshman Percussion")
    }
}
struct ContentView_Previews: PreviewProvider {
static var previews: some View {
    ContentView()
    }
}
