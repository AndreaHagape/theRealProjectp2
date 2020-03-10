 
import SwiftUI
 
struct ListItem: Identifiable, Equatable {
    var id = UUID()
    var name: String
}
 
class MyListClass: ObservableObject {
    @Published var items = [ListItem]()
    
}
 
struct VarsityPercView: View {
 
    @ObservedObject var myList = MyListClass()
    
 
    var body: some View {
        
        NavigationView {
            List {
                ForEach(myList.items) { item in
                    // Pass binding to item into DetailsView
                    NavigationLink(destination: VPCalculatorView(item: self.$myList.items[self.myList.items.firstIndex(of: item)!])) {
                        Text(item.name)
                    }
                }

            }
                   .navigationBarTitle(Text("Varsity Percussion"))
            .navigationBarItems(trailing:
                Button(action: {
                    let item = ListItem(name: "Test")
                    self.myList.items.append(item)
                }) {
                    Image(systemName: "plus")
                }
            )
            navigationViewStyle(StackNavigationViewStyle())

        }
    }
}
 
 
 
struct VarsityPercView_Previews: PreviewProvider {
    static var previews: some View {
        VarsityPercView()
    }
}
 
 
 
 
 
 
                                                                                                                      
                                           
