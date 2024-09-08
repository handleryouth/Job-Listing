//
//  JobCard.swift
//  Job Listing
//
//  Created by Tony Gultom on 08/09/24.
//

import SwiftUI

struct JobCard: View {
    var jobs: JobModel
    var body: some View {
        ZStack(alignment: .topLeading) {
            VStack(alignment: .leading, spacing: 20) {
                VStack(alignment: .leading, spacing: 20) {
                    Text(jobs.company).fontWeight(.bold)
                    Text(jobs.position).fontWeight(.bold)
                    HStack {
                        Text(jobs.postedAt)
                        Text(jobs.contract)
                        Text(jobs.location)
                    }
                }.frame(maxWidth: .infinity, alignment: .leading).padding(.bottom, 20).overlay(Rectangle().frame( width: nil, height: 1).foregroundStyle(Color.black), alignment: .bottom)
            
                HStack(alignment: .top) {
                    ForEach(jobs.languages, id: \.self, content: {
                        language in LanguageCard(text: language)
                    })
                }
            }.frame(maxWidth: /*@START_MENU_TOKEN@*/.infinity/*@END_MENU_TOKEN@*/, alignment: .leading).padding(.horizontal, 20).padding(.vertical, 30).clipShape(.rect(cornerRadius: 10))
                .overlay(
                    Rectangle().frame(width: 10, height: nil, alignment: .leading).clipShape(
                        .rect(topLeadingRadius: 10, bottomLeadingRadius: 10)
                    ).foregroundStyle(.red),
                    alignment: .leading
                )
            Image(jobs.logo).resizable().frame(width: 50, height: 50).offset(x: 20,y: -30 )
        }.frame(maxWidth: /*@START_MENU_TOKEN@*/.infinity/*@END_MENU_TOKEN@*/).padding(.vertical, 30)
        
    }
}

