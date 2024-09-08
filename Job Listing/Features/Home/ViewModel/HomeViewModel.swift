//
//  HomeViewModel.swift
//  Job Listing
//
//  Created by Tony Gultom on 08/09/24.
//

import Foundation

class JobViewModel: ObservableObject {
    @Published var jobList: [JobModel] = []
    private let decodedJobs: [JobModel]  = DecodeJSON(fileName: "data") ?? []
    
    func getJobs() {
        jobList = decodedJobs
    }
    
    func filterByLanguage(_ language: String) {
       jobList =  decodedJobs.filter({
           $0.languages.contains(language)
        })
    }
    
    func resetJobs() {
        jobList = decodedJobs
    }
}
