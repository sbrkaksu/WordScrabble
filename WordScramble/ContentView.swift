//
//  ContentView.swift
//  WordScramble
//
//  Created by Berk Aksu on 13.12.2023.
//

import SwiftUI

struct ContentView: View {
    @State private var usedWords = [String]()
    @State private var rootWord = ""
    @State private var newWord = ""
    var body: some View {
        NavigationView{
            List{
                Section{
                    TextField("Enter your word", text: $newWord)
                }
                Section{
                    ForEach(usedWords, id: \.self){ word in
                        Text(word)
                    }
                }
            }
            .navigationTitle(rootWord)
        }
    }
    
}

struct ContentView_Previews: PreviewProvider {
    static var previews: some View {
        ContentView()
    }
}
