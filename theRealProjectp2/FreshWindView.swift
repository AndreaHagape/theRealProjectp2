//
//  FreshWindView.swift
//  theRealProjectp2
//
//  Created by JOHNSON, OLIVIA on 2/5/20.
//  Copyright © 2020 HAGAPE, ANDREA. All rights reserved.
//

import SwiftUI

struct FreshWindView: View {
    var body: some View {
        NavigationView{
        ZStack{
            Color.green
            .edgesIgnoringSafeArea(.all)
            VStack{
               
                Text("Freshmen Woodwind")
                .font(.largeTitle)
                    .foregroundColor(Color.white)
                    .padding(.top)
                    
                
                .padding(.vertical)
                
                List {
                    
                    NavigationLink(destination: FreshFluteView()) {
                        Text("Freshmen Flute") .multilineTextAlignment(.center)
                            .padding(.all)
                            .background(Color.white)
                        
                    };
                    NavigationLink(destination: FreshOboeView()) {
                        Text("Freshmen Oboe") .multilineTextAlignment(.center)
                            .padding(.all)
                            .background(Color.white)
                        
                    };
                    NavigationLink(destination: FreshClarinetView()) {
                        Text("Freshmen Clarinet") .multilineTextAlignment(.center)
                            .padding(.all)
                            .background(Color.white)
                        
                    };
                    NavigationLink(destination: FreshBasoonView()) {
                        Text("Freshmen Basoon") .multilineTextAlignment(.center)
                            .padding(.all)
                            .background(Color.white)
                        
                    };
                    NavigationLink(destination: FreshBassClarinetView()) {
                        Text("Freshmen Bass Clarinet") .multilineTextAlignment(.center)
                            .padding(.all)
                            .background(Color.white)
                        
                    };
                    NavigationLink(destination: FreshAltoSaxView()) {
                        Text("Freshmen Alto Saxophone") .multilineTextAlignment(.center)
                            .padding(.all)
                            .background(Color.white)
                        
                    };
                    NavigationLink(destination: FreshTenorSaxView()) {
                        Text("Freshmen Tenor Saxophone") .multilineTextAlignment(.center)
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

struct FreshWindView_Previews: PreviewProvider {
    static var previews: some View {
        FreshWindView()
    }
}
