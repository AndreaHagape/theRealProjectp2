//
//  VarsityAltoSaxView.swift
//  theRealProjectp2
//
//  Created by Shah, Rani on 2/18/20.
//  Copyright © 2020 HAGAPE, ANDREA. All rights reserved.
//

import SwiftUI

struct VarsityAltoSaxView: View {
var body: some View {
    NavigationView{
    ZStack{
        Color.green
        .edgesIgnoringSafeArea(.all)
        VStack{
            Text("Varsity Alto Sax")
            .font(.largeTitle)
                .foregroundColor(Color.white)
                .padding(.top)
                
            .padding(.vertical)
           
            
            List {
                
                NavigationLink(destination: VWCalculatorView()){StudentRowView()};
                
            }
        
            }
    }
    }

        }
        
    }
struct VarsityAltoSaxView_Previews: PreviewProvider {
    static var previews: some View {
        VarsityAltoSaxView()
    }
}
