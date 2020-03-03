//
//  VarsityPercView.swift
//  theRealProjectp2
//
//  Created by JOHNSON, OLIVIA on 2/5/20.
//  Copyright © 2020 HAGAPE, ANDREA. All rights reserved.
//

import SwiftUI

struct VarsityPercView: View {
@State private var usedWords = [String] ()
    @State private var rootWord = ""
    @State private var newWord = ""
    

    var body: some View {
        //NavigationView {
        ZStack{
        Color.green
        .edgesIgnoringSafeArea(.all)
            VStack{
            
            Text("Varsity Percussion")
            .font(.largeTitle)
            .foregroundColor(Color.white)
            .padding(.top)
            .padding(.vertical)
                
                TextField("Enter Student Name", text: $newWord, onCommit: addNewWord)
                
               NavigationLink(destination: VPCalculatorView()) {
                List(usedWords, id: \.self){
                    Text($0)
                    }
                }
                
                }

            
        
        //.navigationBarTitle(rootWord)
        //}
       //.navigationViewStyle(StackNavigationViewStyle())
        }
    }
    
    func addNewWord(){
        let answer = newWord
        usedWords.insert(answer, at: 0)
        newWord = ""
        return
    }
    
struct VarsityPercView_Previews: PreviewProvider {
    static var previews: some View {
        VarsityPercView()
    }
}
}





                                                                                                                      
                                                      
