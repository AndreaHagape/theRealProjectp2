//
//  FreshBrassView.swift
//  theRealProjectp2
//
//  Created by JOHNSON, OLIVIA on 2/5/20.
//  Copyright © 2020 HAGAPE, ANDREA. All rights reserved.
//

import SwiftUI

struct FreshBrassView: View {
    var body: some View {
        NavigationView{
        ZStack{
            Color.green
            .edgesIgnoringSafeArea(.all)
            VStack{
               
                Text("Freshmen Brass")
                .font(.largeTitle)
                    .foregroundColor(Color.white)
                    .padding(.top)
                    
                
                .padding(.vertical)
                
                List {
                    
                    NavigationLink(destination: FreshTrumpetView()) {
                        Text("Freshmen Trumpet") .multilineTextAlignment(.center)
                            .padding(.all)
                            .background(Color.white)
                        
                    };
                    NavigationLink(destination: FreshTromboneView()) {
                        Text("Freshmen Trombone") .multilineTextAlignment(.center)
                            .padding(.all)
                            .background(Color.white)
                        
                    };
                    NavigationLink(destination: FreshFrenchHornView()) {
                        Text("Freshmen French Horn") .multilineTextAlignment(.center)
                            .padding(.all)
                            .background(Color.white)
                        
                    };
                    NavigationLink(destination: FreshBaritoneView()) {
                        Text("Freshmen Baritone") .multilineTextAlignment(.center)
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

struct FreshBrassView_Previews: PreviewProvider {
    static var previews: some View {
        FreshBrassView()
    }
}
