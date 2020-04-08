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
    
    
    @State var s1pitch: String = ""
    @State var s1tempo: String = ""
    @State var s1sound: String = ""
    
    
    @State var s2pitch: String = ""
    @State var s2tempo: String = ""
    @State var s2sound: String = ""
    
    
    @State var s3pitch: String = ""
    @State var s3tempo: String = ""
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
                Text("Varsity Woodwind")
                Spacer()
                TextField("", text: self.$item.name)
                Spacer()
                Text("Score: " + String(findAverageVW()) + " %")
                Spacer()
            }
            
            TextView(text: $comment).frame(numLines: 8)
            Spacer()

            HStack{
                List{Text(""); Text("Rhythm").font(.system(size: 12.0)); Text("Pitch").font(.system(size: 12.0)); Text("Tempo").font(.system(size: 12.0)); Text("Dynamic").font(.system(size: 12.0)); Text("Sound").font(.system(size: 12.0))}
                
                List{Text("Scale 1").font(.system(size: 12.0)); Text("n/a"); TextField("/20", text: $s1pitch); TextField("/20", text: $s1tempo); Text("n/a"); TextField("/20", text: $s1sound)}
                
                List{Text("Scale 2").font(.system(size: 12.0)); Text("n/a"); TextField("/20", text: $s2pitch); TextField("/20", text: $s2tempo); Text("n/a"); TextField("/20", text: $s2sound)}
                
                List{Text("Scale 3").font(.system(size: 12.0)); Text("n/a"); TextField("/20", text: $s3pitch); TextField("/20", text: $s3tempo); Text("n/a"); TextField("/20", text: $s3sound)}

                List{Text("Etude 1").font(.system(size: 12.0)); TextField("/20", text: $e1rhythm); TextField("/20", text: $e1pitch); TextField("/20", text: $e1tempo); TextField("/20", text: $e1dynamic); TextField("/20", text: $e1sound)}
                
                List{Text("Etude 2").font(.system(size: 12.0)); TextField("/20", text: $e2rhythm); TextField("/20", text: $e2pitch); TextField("/20", text: $e2tempo); TextField("/20", text: $e2dynamic); TextField("/20", text: $e2sound)}
                
                List{Text("Etude 3").font(.system(size: 12.0)); TextField("/20", text: $e3rhythm); TextField("/20", text: $e3pitch); TextField("/20", text: $e3tempo); TextField("/20", text: $e3dynamic); TextField("/20", text: $e3sound)}
                
                List{Text("Sight Read 1").font(.system(size: 11.0)); TextField("/20", text: $sr1rhythm); TextField("/20", text: $sr1pitch); TextField("/20", text: $sr1tempo); TextField("/20", text: $sr1dynamic); TextField("/20", text: $sr1sound);}
                
                List{Text("Sight Read 2").font(.system(size: 11.0)); TextField("/20", text: $sr2rhythm); TextField("/20", text: $sr2pitch); TextField("/20", text: $sr2tempo); TextField("/20", text: $sr2dynamic); TextField("/20", text: $sr2sound);}
        }
        }
    }
    
    func findAverageVW() -> Int {
        var avg: Int = 0
        let ints1pitch: Int = Int(s1pitch) ?? 0
         let ints1tempo: Int = Int(s1tempo) ?? 0
         let ints1sound: Int = Int(s1sound) ?? 0
        
         let ints2pitch: Int = Int(s2pitch) ?? 0
         let ints2tempo: Int = Int(s2tempo) ?? 0
         let ints2sound: Int = Int(s2sound) ?? 0
        
         let ints3pitch: Int = Int(s3pitch) ?? 0
        let ints3tempo: Int = Int(s3tempo) ?? 0
        let ints3sound: Int = Int(s3sound) ?? 0
        
        let inte1rhythm: Int = Int(e1rhythm) ?? 0
        let inte1pitch: Int = Int(e1pitch) ?? 0
       let inte1tempo: Int = Int(e1tempo) ?? 0
        let inte1dynamic: Int = Int(e1dynamic) ?? 0
        let inte1sound: Int = Int(e1sound) ?? 0
        
        let inte2rhythm: Int = Int(e2rhythm) ?? 0
        let inte2pitch: Int = Int(e2pitch) ?? 0
        let inte2tempo: Int = Int(e2tempo) ?? 0
        let inte2dynamic: Int = Int(e2dynamic) ?? 0
        let inte2sound: Int = Int(e2sound) ?? 0
        
        let inte3rhythm: Int = Int(e3rhythm) ?? 0
        let inte3pitch: Int = Int(e3pitch) ?? 0
        let inte3tempo: Int = Int(e3tempo) ?? 0
        let inte3dynamic: Int = Int(e3dynamic) ?? 0
        let inte3sound: Int = Int(e3sound) ?? 0
        
        let intsr1rhythm: Int = Int(sr1rhythm) ?? 0
        let intsr1pitch: Int = Int(sr1pitch) ?? 0
        let intsr1tempo: Int = Int(sr1tempo) ?? 0
        let intsr1dynamic: Int = Int(sr1dynamic) ?? 0
        let intsr1sound: Int = Int(sr1sound) ?? 0
        
        let intsr2rhythm: Int = Int(sr2rhythm) ?? 0
        let intsr2pitch: Int = Int(sr2pitch) ?? 0
        let intsr2tempo: Int = Int(sr2tempo) ?? 0
        let intsr2dynamic: Int = Int(sr2dynamic) ?? 0
        let intsr2sound: Int = Int(sr2sound) ?? 0
        
        let sum = ints1pitch + ints1tempo + ints1sound + ints2pitch + ints2tempo + ints2sound + ints3pitch + ints3tempo + ints3sound + inte1rhythm + inte1pitch + inte1tempo + inte1dynamic + inte1sound + inte2rhythm + inte2pitch + inte2tempo + inte2dynamic + inte2sound + inte3rhythm + inte3pitch + inte3tempo + inte3dynamic + inte3sound + intsr1rhythm + intsr1pitch + intsr1tempo + intsr1dynamic + intsr1sound + intsr2rhythm + intsr2pitch + intsr2tempo + intsr2dynamic + intsr2sound
            
            avg = Int((Double(sum)/(34.0 * 20.0)) * 100.0)
        
        return avg
    }
}

/*struct VWCalculatorView_Previews: PreviewProvider {
    static var previews: some View {
        VWCalculatorView()
    }
}
*/
