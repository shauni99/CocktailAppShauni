//
//  GrocerieView.swift
//  CocktailApp
//
//  Created by shauni vansteyvoort on 19/12/2020.
//

import SwiftUI


struct GroceryView: View {
    @ObservedObject var groceryItemStore = GroceryItemStore()
    @State var newGrocery : String = ""
   
    var inputBar: some View {
        HStack {
            TextField("Enter a new grocery", text:self.$newGrocery)
           
            
            Button(action: self.addNewGrocery) {
                Label("", systemImage: "plus.circle.fill")
            }.font(.largeTitle).foregroundColor(Color(red: 1.018, green: 0.6, blue: 1.023))
        }
    }

    var body: some View {
        VStack {
            inputBar.padding()
            List{
                ForEach(self.groceryItemStore.groceryItems){
                    groceryItem in
                    ZStack{
                        Rectangle().fill(Color(red: 1.009, green: 0.954, blue: 1.003))
                            .cornerRadius(50)
                           
                        HStack{
                            Image(systemName: "square.and.pencil").font(.largeTitle).foregroundColor(Color(red: 1.018, green: 0.6, blue: 1.023))
                    Text(groceryItem.groceryItem).padding(8)
                        .background(Color(red: 1.009, green: 0.954, blue: 1.003))
                        .cornerRadius(8)
                            Spacer()
                            
                        }.padding()
                        
                    }
                }.onMove(perform: self.move)
                .onDelete(perform: self.delete)
               
            }.navigationBarTitle("Groceries")
            .navigationBarItems(trailing: EditButton())
        }
    }


func addNewGrocery(){
    if !newGrocery.isEmpty{
        groceryItemStore.groceryItems.append(GroceryItem(id:String(groceryItemStore.groceryItems.count + 1), groceryItem: newGrocery))
        
        self.newGrocery = ""
    }
    
}
    
func move(from source: IndexSet, to destination: Int){
    groceryItemStore.groceryItems.move(fromOffsets: source, toOffset: destination)
        
}
    
func delete(at offsets: IndexSet){
    groceryItemStore.groceryItems.remove(atOffsets: offsets)
        
}

}



// zorgt voor preview aangezien we dit niet kunnen zien in main.storyboard

struct GroceryView_Previews: PreviewProvider{
    static var previews: some View{
        GroceryView()
    }
}
