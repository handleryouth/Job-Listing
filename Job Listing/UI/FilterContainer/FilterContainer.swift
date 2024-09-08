//
//  FilterContainer.swift
//  Job Listing
//
//  Created by Tony Gultom on 08/09/24.
//

import SwiftUI

struct FilterContainer: View {

    var onChangeFiltered: (_ language: String) -> Void
    
    init(onChangeFiltered: @escaping (_ language : String) -> Void) {
        self.onChangeFiltered = onChangeFiltered
    }
    
    private var languageSelection: [String] = ["HTML", "CSS", "JavaScript", "Python", "Ruby"]
    
    @State var language = ""
    var body: some View {
        Picker(selection: $language, label: Text("Filter by language")) {
            ForEach(languageSelection, id: \.self) {
                language in Text(language).tag(language)
            }
        }.onChange(of: language, {
            onChangeFiltered(language)
        })
    }
}

