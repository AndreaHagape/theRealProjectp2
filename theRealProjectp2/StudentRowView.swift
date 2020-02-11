//
//  StudentRowView.swift
//  theRealProjectp2
//
//  Created by Shah, Rani on 2/6/20.
//  Copyright © 2020 HAGAPE, ANDREA. All rights reserved.
//

import SwiftUI

struct StudentRowView: View {
    var body: some View {
        ZStack{
            Color.green
            .edgesIgnoringSafeArea(.all)
        VStack{
        HStack{
            Spacer()
            Text("name")
            
            Spacer()
            Text("instrument")
            Spacer()
            Text("band")
            Spacer()
        }
        HStack{
            Text("Score")
        }
        }
        }
        }
    }


struct StudentRowView_Previews: PreviewProvider {
    static var previews: some View {
        StudentRowView()
    }
}
