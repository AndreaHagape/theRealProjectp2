//
//  VWCalculatorView.swift
//  theRealProjectp2
//
//  Created by Shah, Rani on 2/19/20.
//  Copyright © 2020 HAGAPE, ANDREA. All rights reserved.
//

import SwiftUI

struct VWCalculatorView: View {
@Binding var item: ListItem
    var body: some View {
        VStack{
            TextField("", text: self.$item.name)
            Spacer()
            Text("")
            HStack{
            List{Text("hello")}
            List{Text("hello")}
            List{Text("hello")}
            List{Text("hello")}
            List{Text("hello")}
            List{Text("hello")}
            List{Text("hello")}
            List{Text("hello")}
        }
        }
    }
}

/*struct VWCalculatorView_Previews: PreviewProvider {
    static var previews: some View {
        VWCalculatorView()
    }
}
*/
