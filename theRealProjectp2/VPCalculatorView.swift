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
    @State var s1pitch: String = ""
    @State var s1tempo: String = ""
    @State var s1sound: String = ""
    
    @State var s2pitch: String = ""
    @State var s2tempo: String = ""
    @State var s2sound: String = ""
    
    @State var s3pitch: String = ""
    @State var s3tempo: String = ""
    @State var s3sound: String = ""
 
    var body: some View {
        VStack{
        TextField("", text: self.$item.name)
            HStack{
                List{Text("hello"); Text("Rhythm"); Text("Pitch"); Text("Tempo"); Text("Dynamic"); Text("Sound")}
                
                List{Text("Scale 1"); Text("n/a"); TextField("/20", text: $s1pitch); TextField("/20", text: $s1tempo); Text("n/a"); TextField("/20", text: $s1sound)}
                
            List{Text("Scale 2"); Text("n/a"); TextField("/20", text: $s2pitch); TextField("/20", text: $s2tempo); Text("n/a"); TextField("/20", text: $s2sound)}
            List{Text("Scale 3"); Text("n/a"); TextField("/20", text: $s3pitch); TextField("/20", text: $s3tempo); Text("n/a"); TextField("/20", text: $s3sound)}
            List{Text("Snare Etude")}
            List{Text("Mallet Etude")}
            List{Text("Timp Etude")}
            List{Text("Snare Sight Read")}
            List{Text("Mallet Sight Read")}
            
        }
 
        }
    }
}
struct VPCalc{
    
}
 
 
/*struct VPCalculatorView_Previews: PreviewProvider {
    static var previews: some View {
        VPCalculatorView()
    }
}
*/
