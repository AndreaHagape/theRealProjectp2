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
    @State var comment: String = ""
    //
    
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
        HStack{
            TextField("", text: self.$item.name)
            Spacer()
            TextField("", text: self.$item.score)
            Spacer()
            TextField("", text: self.$item.band)
            Spacer()
            Text("Score: " + String(findAverageVP()) + " %")
            Spacer()
        }
            
            TextView(text: $comment).frame(numLines: 10)
            Spacer()
            
            
            HStack{
            List{Text(""); Text("Rhythm"); Text("Pitch"); Text("Tempo"); Text("Dynamic"); Text("Sound")}
                
            List{Text("Scale 1"); Text("n/a"); TextField("/20", text: $s1pitch); TextField("/20", text: $s1tempo); Text("n/a"); TextField("/20", text: $s1sound)}
                
            List{Text("Scale 2"); Text("n/a"); TextField("/20", text: $s2pitch); TextField("/20", text: $s2tempo); Text("n/a"); TextField("/20", text: $s2sound)}
                
            List{Text("Scale 3"); Text("n/a"); TextField("/20", text: $s3pitch); TextField("/20", text: $s3tempo); Text("n/a"); TextField("/20", text: $s3sound)}
                
            List{Text("Snare Etude"); TextField("/20", text: $serhythm); Text("n/a"); TextField("/20", text: $setempo); TextField("/20", text: $sedynamic); TextField("/20", text: $sesound)}
                
            List{Text("Mallet Etude"); TextField("/20", text: $merhythm); TextField("/20", text: $mepitch); TextField("/20", text: $metempo); TextField("/20", text: $medynamic); TextField("/20", text: $mesound);}
                
            List{Text("Timp Etude"); TextField("/20", text: $terhythm); Text("n/a"); TextField("/20", text: $tetempo); TextField("/20", text: $tedynamic); TextField("/20", text: $tesound);}
                
            List{Text("Snare Sight Read"); TextField("/20", text: $ssrrhythm); Text("n/a"); TextField("/20", text: $ssrtempo); TextField("/20", text: $ssrdynamic); TextField("/20", text: $ssrsound);}
                
            List{Text("Mallet Sight Read"); TextField("/20", text: $msrrhythm); TextField("/20", text: $msrpitch); TextField("/20", text: $msrtempo); Text("n/a"); TextField("/20", text: $msrsound);}
            
        }
            Spacer()
            
 
        }
    }
   
    
    func findAverageVP() -> Int {
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
        
        let intserhythm: Int = Int(serhythm) ?? 0
       let intsetempo: Int = Int(setempo) ?? 0
        let intsedynamic: Int = Int(sedynamic) ?? 0
        let intsesound: Int = Int(sesound) ?? 0
        
        let intmerhythm: Int = Int(merhythm) ?? 0
        let intmepitch: Int = Int(mepitch) ?? 0
        let intmetempo: Int = Int(metempo) ?? 0
        let intmedynamic: Int = Int(medynamic) ?? 0
        let intmesound: Int = Int(mesound) ?? 0
        
        let intterhythm: Int = Int(terhythm) ?? 0
        let inttetempo: Int = Int(tetempo) ?? 0
        let inttedynamic: Int = Int(tedynamic) ?? 0
        let inttesound: Int = Int(tesound) ?? 0
        
        let intssrrhythm: Int = Int(ssrrhythm) ?? 0
        let intssrtempo: Int = Int(ssrtempo) ?? 0
        let intssrdynamic: Int = Int(ssrdynamic) ?? 0
        let intssrsound: Int = Int(ssrsound) ?? 0
        
        let intmsrrhythm: Int = Int(msrrhythm) ?? 0
        let intmsrpitch: Int = Int(msrpitch) ?? 0
        let intmsrtempo: Int = Int(msrtempo) ?? 0
        let intmsrsound: Int = Int(msrsound) ?? 0
        
        let sum = ints1pitch + ints1sound + ints1tempo + ints2pitch + ints2tempo + ints2sound + ints3pitch + ints3tempo + ints3sound + intserhythm + intsetempo + intsedynamic + intsesound + intmerhythm + intmepitch + intmetempo + intmedynamic + intmesound + intterhythm + inttetempo + inttedynamic + inttesound + intssrrhythm + intssrtempo + intssrdynamic + intssrsound + intmsrrhythm + intmsrpitch + intmsrtempo + intmsrsound
        avg = Int((Double(sum)/(30.0 * 20.0)) * 100.0)
        
        return avg
    }

}

 
 
/*struct VPCalculatorView_Previews: PreviewProvider {
    static var previews: some View {
        VPCalculatorView()
    }
}
*/
