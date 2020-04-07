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
    @State var comment: String = ""
    
    @State var s1rhythm: String = ""
    @State var s1pitch: String = ""
    @State var s1tempo: String = ""
    @State var s1dynamic: String = ""
    @State var s1sound: String = ""
    
    @State var s2rhythm: String = ""
    @State var s2pitch: String = ""
    @State var s2tempo: String = ""
    @State var s2dynamic: String = ""
    @State var s2sound: String = ""
    
    @State var s3rhythm: String = ""
    @State var s3pitch: String = ""
    @State var s3tempo: String = ""
    @State var s3dynamic: String = ""
    @State var s3sound: String = ""
    
    @State var e1rhythm: String = ""
    @State var e1pitch: String = ""
    @State var e1tempo: String = ""
    @State var e1dynamic: String = ""
    @State var e1sound: String = ""
    
    @State var e2rhythm: String = ""
    @State var e2pitch: String = ""
    @State var e2tempo: String = ""
    @State var e2dynamic: String = ""
    @State var e2sound: String = ""
    
    @State var e3rhythm: String = ""
    @State var e3pitch: String = ""
    @State var e3tempo: String = ""
    @State var e3dynamic: String = ""
    @State var e3sound: String = ""
    
    @State var sr1rhythm: String = ""
    @State var sr1pitch: String = ""
    @State var sr1tempo: String = ""
    @State var sr1dynamic: String = ""
    @State var sr1sound: String = ""
    
    @State var sr2rhythm: String = ""
    @State var sr2pitch: String = ""
    @State var sr2tempo: String = ""
    @State var sr2dynamic: String = ""
    @State var sr2sound: String = ""
    
    var body: some View {
        VStack{
            HStack{
                TextField("", text: self.$item.name)
                Spacer()
                Text("Score: " + "%")
                Spacer()
            }
            
            TextView(text: $comment).frame(numLines: 8)
            Spacer()

            HStack{
            List{Text(""); Text("Rhythm"); Text("Pitch"); Text("Tempo"); Text("Dynamic"); Text("Sound")}
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
