//
//  FreshBassClarinetView.swift
//  theRealProjectp2
//
//  Created by Shah, Rani on 2/19/20.
//  Copyright © 2020 HAGAPE, ANDREA. All rights reserved.
//

import SwiftUI

struct FreshBassClarinetView: View {
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

struct FreshBassClarinetView_Previews: PreviewProvider {
    static var previews: some View {
        FreshBassClarinetView()
    }
}
