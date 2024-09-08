//
//  ContentView.swift
//  Job Listing
//
//  Created by Tony Gultom on 08/09/24.
//

import SwiftUI

struct ContentView: View {
    
    @ObservedObject var jobObject = JobViewModel()
    
    @State var resetReady = true
    
    func loadJobData() {
        jobObject.getJobs()
    }
    
    
    var body: some View {
        VStack {
            HStack {
                Button(action: {
                jobObject.resetJobs()
                resetReady = true
                    
                }) {
                    Text("Clear Filter").tint(.red)
                }.disabled(resetReady)
                Spacer()
                FilterContainer(onChangeFiltered: {
                    language in jobObject.filterByLanguage(language)
                    resetReady = false
                })
            }.padding(.horizontal, 20)
          
            List {
                ForEach(jobObject.jobList, content: { job in
                    JobCard(jobs: job)
                }).listRowSeparator(.hidden)
            }
        }.onAppear(perform: {
            jobObject.getJobs()
        })

    }
}
