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
        ZStack{
            Color.green
            .edgesIgnoringSafeArea(.all)
            VStack{
            Text("Freshmen Woodwind")
            .font(.largeTitle)
                .foregroundColor(Color.white)
                .padding(.top)
                           Spacer()
            }
        }
    }
}

struct FreshWindView_Previews: PreviewProvider {
    static var previews: some View {
        FreshWindView()
    }
}
