//
//  AgencyViewModel.swift
//  RealEstatePresentation
//
//  Created by Angelos Staboulis on 28/11/23.
//

import Foundation
class AgencyViewModel:ObservableObject{
    var agency:RealEstateAgency
    init(agency: RealEstateAgency) {
        self.agency = agency
    }
    func saveData(agency:RealEstateAgency)->RealEstateAgency{
        self.agency = agency
        return self.agency
    }
}
