//
//  LanguageCard.swift
//  Job Listing
//
//  Created by Tony Gultom on 08/09/24.
//

import SwiftUI

struct LanguageCard: View {
    var text: String
    var body: some View {
        VStack(alignment: .leading) {
            Text(text).multilineTextAlignment(.leading).fontWeight(.bold)
        }.padding(10).background(.brown).clipShape(.rect(cornerRadius: 10))
    }
}
