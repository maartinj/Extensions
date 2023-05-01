//
// Created for SwiftUIExtensions
// by  Stewart Lynch on 2023-03-30
// Using Swift 5.0
// Running on macOS 13.2
// 
// Folllow me on Mastodon: @StewartLynch@iosdev.space
// Or, Twitter, if it still exits: https://twitter.com/StewartLynch
// Subscribe on YouTube: https://youTube.com/@StewartLynch
// Buy me a ko-fi:  https://ko-fi.com/StewartLynch


import SwiftUI

struct ContentView: View {
    @State private var name = ""
    @State private var age = ""
    
    var body: some View {
        NavigationStack {
            VStack {
                TextField("Name", text: $name)
                TextField("Age", text: $age)
                    .keyboardType(.numberPad)
                Text("Enter name and age")
                    .font(.body)
                    .foregroundColor(.primary)
                    .frame(maxWidth: .infinity, alignment: .leading)
                Text("Minimum age of 19 required")
                    .font(.callout)
                    .foregroundColor(.red)
                    .frame(maxWidth: .infinity, alignment: .leading)
                Spacer()
            }
            .textFieldStyle(.roundedBorder)
            .padding()
            .navigationBarTitle("View Extensions")
        }
    }
}

struct ContentView_Previews: PreviewProvider {
    static var previews: some View {
        ContentView()
    }
}


// 1. Write an extension for View containing a function that will return a new view that contains a tap gesture that will dismiss the keyboard when tapped and apply this to the NavigationStack view.


// 2. Write an extension for View containing a function that will return a new view that has will apply the current three modifiers on the text views, but allow for for font and color to be arguments then apply the function to each text field instead of the current modifiers.


// 3. Rewrite the function view extension as a View Modifier and apply to two text fields instead of the function


// 4. Create a ViewExtension to the ViewModifier above

