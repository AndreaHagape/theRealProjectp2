//
//  CalculatorView.swift
//  theRealProjectp2
//
//  Created by Shah, Rani on 2/7/20.
//  Copyright © 2020 HAGAPE, ANDREA. All rights reserved.
//

import SwiftUI

struct CalculatorView: View {
    var body: some View {
        ZStack {
        Color.green
            .edgesIgnoringSafeArea(.all)
            VStack{
                Text("Varsity Percussion Calculator")
                font(.largeTitle)
                    .foregroundColor(Color.white)
                    .padding(.top)
                    
                
                .padding(.vertical)
            }
        }
    }
}

struct CalculatorView_Previews: PreviewProvider {
    static var previews: some View {
        CalculatorView()
    }
}
