//
//  VarsityWindView.swift
//  theRealProjectp2
//
//  Created by JOHNSON, OLIVIA on 2/5/20.
//  Copyright © 2020 HAGAPE, ANDREA. All rights reserved.
//

import SwiftUI

struct VarsityWindView: View {
    
    
    var body: some View {
        NavigationView{
              ZStack{
            Color.green
            .edgesIgnoringSafeArea(.all)
            VStack{
                
                Text("Varsity Woodwind")
                .font(.largeTitle)
                .foregroundColor(Color.white)
                    .padding(.top)
                    .padding(.vertical)
                
                
                List{
                    NavigationLink(destination: VarsityFluteView()) {
                        Text("Varsity Flute") .multilineTextAlignment(.center)
                            .padding(.all)
                            .background(Color.white)
                        
                    };
                    NavigationLink(destination: VarsityOboeView()) {
                        Text("Varsity Oboe") .multilineTextAlignment(.center)
                            .padding(.all)
                            .background(Color.white)
                        
                    };
                    NavigationLink(destination: VarsityClarinetView()) {
                        Text("Varsity Clarinet") .multilineTextAlignment(.center)
                            .padding(.all)
                            .background(Color.white)
                        
                    };
                    NavigationLink(destination: VarsityBassClarinetView()) {
                        Text("Varsity Bass Clarinet") .multilineTextAlignment(.center)
                            .padding(.all)
                            .background(Color.white)
                        
                    };
                    NavigationLink(destination: VarsityBasoonView()) {
                        Text("Varsity Basoon") .multilineTextAlignment(.center)
                            .padding(.all)
                            .background(Color.white)
                        
                    };
                    NavigationLink(destination: VarsityAltoSaxView()) {
                    Text("Varsity Alto Sax") .multilineTextAlignment(.center)
                        .padding(.all)
                        .background(Color.white)
                    };
                    NavigationLink(destination: VarsityTenorSaxView()) {
                    Text("Varsity Tenor Sax") .multilineTextAlignment(.center)
                        .padding(.all)
                        .background(Color.white)
                
                    };
                    NavigationLink(destination: VarsityBariSaxView()) {
                        Text("Varsity Bari Sax") .multilineTextAlignment(.center)
                            .padding(.all)
                            .background(Color.white)
                    
                        };

            }
                    
        }

    }
            navigationViewStyle(StackNavigationViewStyle())
}
    }
}
    

struct VarsityWindView_Previews: PreviewProvider {
    static var previews: some View {
        VarsityWindView()
    }
}


