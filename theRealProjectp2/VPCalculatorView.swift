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
    
    @State var serhythm: String = ""
    @State var setempo: String = ""
    @State var sedynamic: String = ""
    @State var sesound: String = ""
    
    @State var merhythm: String = ""
    @State var mepitch: String = ""
    @State var metempo: String = ""
    @State var medynamic: String = ""
    @State var mesound: String = ""
    
    @State var terhythm: String = ""
    @State var tetempo: String = ""
    @State var tedynamic: String = ""
    @State var tesound: String = ""
    
    @State var ssrrhythm: String = ""
    @State var ssrtempo: String = ""
    @State var ssrdynamic: String = ""
    @State var ssrsound: String = ""
    
    @State var msrrhythm: String = ""
    @State var msrpitch: String = ""
    @State var msrtempo: String = ""
    @State var msrsound: String = ""
 
    var body: some View {
        VStack{
        TextField("", text: self.$item.name)
            HStack{
            List{Text("hello"); Text("Rhythm"); Text("Pitch"); Text("Tempo"); Text("Dynamic"); Text("Sound")}
                
            List{Text("Scale 1"); Text("n/a"); TextField("/20", text: $s1pitch); TextField("/20", text: $s1tempo); Text("n/a"); TextField("/20", text: $s1sound)}
                
            List{Text("Scale 2"); Text("n/a"); TextField("/20", text: $s2pitch); TextField("/20", text: $s2tempo); Text("n/a"); TextField("/20", text: $s2sound)}
                
            List{Text("Scale 3"); Text("n/a"); TextField("/20", text: $s3pitch); TextField("/20", text: $s3tempo); Text("n/a"); TextField("/20", text: $s3sound)}
                
            List{Text("Snare Etude"); TextField("/20", text: $serhythm); Text("n/a"); TextField("/20", text: $setempo); TextField("/20", text: $sedynamic); TextField("/20", text: $sesound)}
                
            List{Text("Mallet Etude"); TextField("/20", text: $merhythm); TextField("/20", text: $mepitch); TextField("/20", text: $metempo); TextField("/20", text: $medynamic); TextField("/20", text: $mesound);}
                
            List{Text("Timp Etude"); TextField("/20", text: $terhythm); Text("n/a"); TextField("/20", text: $tetempo); TextField("/20", text: $tedynamic); TextField("/20", text: $tesound);}
                
            List{Text("Snare Sight Read"); TextField("/20", text: $ssrrhythm); Text("n/a"); TextField("/20", text: $ssrtempo); TextField("/20", text: $ssrdynamic); TextField("/20", text: $ssrsound);}
                
            List{Text("Mallet Sight Read"); TextField("/20", text: $msrrhythm); TextField("/20", text: $msrpitch); TextField("/20", text: $msrtempo); Text("n/a"); TextField("/20", text: $msrsound);}
            
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
