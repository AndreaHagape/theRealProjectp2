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
            VStack{
            Spacer()
            Text("Band Audition Sorter")
            .font(.largeTitle)
                   .foregroundColor(Color.white)
                Spacer()
                
            Text("Varsity Auditions")
                .font(.title)
                       .foregroundColor(Color.white)
            Button(action: {}) {
             Text("Varsity Percussion")
                 .multilineTextAlignment(.center)
            }
            .padding(.vertical)
            Button(action: {}) {
             Text("Varsity Wind")
                 .multilineTextAlignment(.center)
            }
            .padding(.vertical)
            Button(action: {}) {
            Text("Varsity Brass")
                 .multilineTextAlignment(.center)
            }
            .padding(.vertical)
            Spacer()
            }

            
            
            VStack{
            Text("Freshman Auditions")
                .font(.title)
                       .foregroundColor(Color.white)
            Button(action: {}) {
             Text("Freshman Percussion")
                 .multilineTextAlignment(.center)
            }
                .padding(.vertical)
            Button(action: {}) {
             Text("Freshman Wind")
                 .multilineTextAlignment(.center)
            }
                .padding(.vertical)
            Button(action: {}) {
            Text("Freshman Brass")
                 .multilineTextAlignment(.center)
            }
                .padding(.vertical)
            Spacer()
            }
        }
            
    }
    }


struct ContentView_Previews: PreviewProvider {
static var previews: some View {
    ContentView()
    }
}
}
