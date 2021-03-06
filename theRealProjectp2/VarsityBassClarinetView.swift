//
//  VarsityBassClarinetView.swift
//  theRealProjectp2
//
//  Created by Shah, Rani on 2/13/20.
//  Copyright © 2020 HAGAPE, ANDREA. All rights reserved.
//

import SwiftUI

struct VarsityBassClarinetView: View {
    @ObservedObject var myList = MyListClass()
      

      var body: some View {
          
          NavigationView {
              List {
                  ForEach(myList.items) { item in
                      // Pass binding to item into DetailsView
                      NavigationLink(destination: VWCalculatorView(item: self.$myList.items[self.myList.items.firstIndex(of: item)!])) {
                        Text(item.name  + item.score   + item.band)
                      }
                  }

              }
                     .navigationBarTitle(Text("Varsity Bass Clarinet"))
              .navigationBarItems(trailing:
                  Button(action: {
                      let item = ListItem(name: "New Student" , score: " \t Score: " , band: " \t Band: ")
                      self.myList.items.append(item)
                  }) {
                      Image(systemName: "plus")
                  }
              )
              navigationViewStyle(StackNavigationViewStyle())

          }
      }

}

struct VarsityBassClarinetView_Previews: PreviewProvider {
    static var previews: some View {
        VarsityBassClarinetView()
    }
}
