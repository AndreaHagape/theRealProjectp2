//
//  FWCalculatorView.swift
//  theRealProjectp2
//
//  Created by Shah, Rani on 2/19/20.
//  Copyright © 2020 HAGAPE, ANDREA. All rights reserved.
//

import SwiftUI

struct FWCalculatorView: View {
    @Binding var item: ListItem
    @State var comment: String = ""

    var body: some View {
        VStack{
            HStack{
                TextField("", text: self.$item.name)
                Spacer()
                Text("")
            }
            
            TextView(text: $comment).frame(numLines: 8)
            Spacer()
            
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

/* struct FWCalculatorView_Previews: PreviewProvider {
    static var previews: some View {
        FWCalculatorView()
    }
}
*/
