//
//  FreshPercView.swift
//  theRealProjectp2
//
//  Created by JOHNSON, OLIVIA on 2/5/20.
//  Copyright © 2020 HAGAPE, ANDREA. All rights reserved.
//

import SwiftUI

struct FreshPercView: View {
    @State private var usedWords = [String] ()
        @State private var rootWord = ""
        @State private var newWord = ""
        

        var body: some View {
            NavigationView {
                VStack{
                    TextField("Enter your word", text: $newWord, onCommit: addNewWord)
                    List(usedWords, id: \.self){
                        Text($0)
                    }
                }
           //navigationViewStyle(StackNavigationViewStyle())
            .navigationBarTitle(rootWord)
    }
    }
        func addNewWord(){

            let answer = newWord
            usedWords.insert(answer, at: 0)
            newWord = ""
            return
        }
}

struct FreshPercView_Previews: PreviewProvider {
    static var previews: some View {
        FreshPercView()
    }
}
