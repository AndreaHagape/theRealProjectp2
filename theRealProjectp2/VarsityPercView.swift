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
                HStack{ NavigationLink(destination: ContentView()) {
                    Text("Home")
                    
                        .padding(.all)
                    .background(/*@START_MENU_TOKEN@*/Color.white/*@END_MENU_TOKEN@*/)
                    Spacer()
                    }
                .padding(.leading)
                    
                }
                Text("Varsity Percussion")
                .font(.largeTitle)
                    .foregroundColor(Color.white)
                    .padding(.top)
                    
                
                .padding(.vertical)
                
                List {
                    
                    Text("name")
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
