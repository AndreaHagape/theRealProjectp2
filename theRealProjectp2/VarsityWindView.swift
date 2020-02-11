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
              ZStack{
            Color.green
            .edgesIgnoringSafeArea(.all)
            VStack{
                
                Text("Varsity Woodwind")
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

struct VarsityWindView_Previews: PreviewProvider {
    static var previews: some View {
        VarsityWindView()
    }
}
