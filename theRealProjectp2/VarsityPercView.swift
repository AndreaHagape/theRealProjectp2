//
//  VarsityPercView.swift
//  theRealProjectp2
//
//  Created by JOHNSON, OLIVIA on 2/5/20.
//  Copyright © 2020 HAGAPE, ANDREA. All rights reserved.
//

import SwiftUI

struct VarsityPercView: View {
    var body: some View {
        ZStack{
            Color.green
            .edgesIgnoringSafeArea(.all)
            VStack{
                
                Text("Varsity Percussion")
                .font(.largeTitle)
                    .foregroundColor(Color.white)
                    .padding(.top)
                    Spacer()
                NavigationLink(destination: ContentView()) {
                    Text("Home")
                    .multilineTextAlignment(.center)
                        .padding(.all)
                    .background(/*@START_MENU_TOKEN@*/Color.white/*@END_MENU_TOKEN@*/)
                }
                .padding(.vertical)
                Spacer()
                List {
                    
                    fg
                }
                }

            }
            
        }
    }


struct VarsityPercView_Previews: PreviewProvider {
    static var previews: some View {
        VarsityPercView()
    }
}
