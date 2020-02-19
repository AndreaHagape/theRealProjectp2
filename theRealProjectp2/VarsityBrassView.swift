//
//  VarsityBrassView.swift
//  theRealProjectp2
//
//  Created by JOHNSON, OLIVIA on 2/5/20.
//  Copyright © 2020 HAGAPE, ANDREA. All rights reserved.
//

import SwiftUI

struct VarsityBrassView: View {
    var body: some View {
          ZStack{
            Color.green
            .edgesIgnoringSafeArea(.all)
            VStack{
               
                Text("Varsity Brass")
                .font(.largeTitle)
                    .foregroundColor(Color.white)
                    .padding(.top)
                    
                
                .padding(.vertical)
                
                List {
                    
                    NavigationLink(destination: VarsityTrumpetView()) {
                        Text("Varsity Trumpet") .multilineTextAlignment(.center)
                            .padding(.all)
                            .background(Color.white)
                        
                    };
                    NavigationLink(destination: VarsityTromboneView()) {
                        Text("Varsity Trombone") .multilineTextAlignment(.center)
                            .padding(.all)
                            .background(Color.white)
                        
                    };
                    NavigationLink(destination: VarsityTubaView()) {
                        Text("Varsity Tuba") .multilineTextAlignment(.center)
                            .padding(.all)
                            .background(Color.white)
                        
                    };
                    NavigationLink(destination: VarsityBaritoneView()) {
                        Text("Varsity Baritone") .multilineTextAlignment(.center)
                            .padding(.all)
                            .background(Color.white)
                        
                    };NavigationLink(destination: VarsityFrenchHornView()) {
                        Text("Varsity French Horn") .multilineTextAlignment(.center)
                            .padding(.all)
                            .background(Color.white)
                        
                    };
                }
                }

            }

    }
}

struct VarsityBrassView_Previews: PreviewProvider {
    static var previews: some View {
        VarsityBrassView()
    }
}

