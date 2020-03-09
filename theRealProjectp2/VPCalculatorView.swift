//
//  VPCalculatorView.swift
//  theRealProjectp2
//
//  Created by Shah, Rani on 2/18/20.
//  Copyright © 2020 HAGAPE, ANDREA. All rights reserved.
//
 
import SwiftUI
 
struct VPCalculatorView: View {
    @Binding var item: ListItem
 
    var body: some View {
        TextField("", text: self.$item.name)
 
    
    }
}
 
 
/*struct VPCalculatorView_Previews: PreviewProvider {
    static var previews: some View {
        VPCalculatorView()
    }
}
*/
