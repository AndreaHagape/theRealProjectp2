//
//  VarsityClarinetView.swift
//  theRealProjectp2
//
//  Created by Shah, Rani on 2/13/20.
//  Copyright © 2020 HAGAPE, ANDREA. All rights reserved.
//

import SwiftUI

struct VarsityClarinetView: View {
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

struct VarsityClarinetView_Previews: PreviewProvider {
    static var previews: some View {
        VarsityClarinetView()
    }
}
