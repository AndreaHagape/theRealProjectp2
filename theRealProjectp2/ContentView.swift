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
                Spacer()
                    .padding(.vertical)
                
            Text("Varsity Auditions")
                .font(.title)
                       .foregroundColor(Color.white)
                    .padding(.all)
                .background(Color.blue)
                
            NavigationLink(destination: VarsityPercView()) {
                Text("Varsity Percussion")
                .multilineTextAlignment(.center)
                .padding(.all)
                .background(/*@START_MENU_TOKEN@*/Color.white/*@END_MENU_TOKEN@*/)
            }
                .padding(.vertical)
                
            NavigationLink(destination: VarsityWindView()) {
                Text("Varsity Wind")
                .multilineTextAlignment(.center)
                .padding(.all)
                .background(Color.white)
            }
                .padding(.vertical)
                
            NavigationLink(destination: VarsityBrassView()) {
                Text("Varsity Brass")
                .multilineTextAlignment(.center)
                .padding(.all)
                .background(/*@START_MENU_TOKEN@*/Color.white/*@END_MENU_TOKEN@*/)
            }
                .padding(.vertical)
                Spacer()
            }
                
            
            VStack{
            Text("Freshman Auditions")
            .font(.title)
                   .foregroundColor(Color.white)
                .padding(.all)
            .background(Color.blue)
                
            NavigationLink(destination: FreshPercView()) {
                Text("Freshman Percussion")
                .multilineTextAlignment(.center)
                .padding(.all)
                .background(/*@START_MENU_TOKEN@*/Color.white/*@END_MENU_TOKEN@*/)
            }
                .padding(.vertical)

            NavigationLink(destination: FreshWindView()) {
                Text("Freshman Wind")
                .multilineTextAlignment(.center)
                .padding(.all)
                .background(/*@START_MENU_TOKEN@*/Color.white/*@END_MENU_TOKEN@*/)
            }
                .padding(.vertical)
            
            NavigationLink(destination: FreshBrassView()) {
                Text("Freshman Brass")
                .multilineTextAlignment(.center)
                .padding(.all)
                .background(/*@START_MENU_TOKEN@*/Color.white/*@END_MENU_TOKEN@*/)
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

