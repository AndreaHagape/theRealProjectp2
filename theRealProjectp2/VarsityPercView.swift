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
        NavigationView {
            VStack{
            
            Text("Varsity Woodwind")
            .font(.largeTitle)
            List{
                NavigationLink(destination: VPCalculatorView()) {
                StudentRowView()
                };
                NavigationLink(destination: VPCalculatorView()) {
                    StudentRowView()
                }

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
    





                                                                                                                      
                                                      
