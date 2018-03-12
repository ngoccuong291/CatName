//
//  ViewController.swift
//  CatNames
//
//  Created by Leon Nguyen on 12/3/18.
//  Copyright © 2018 AGL. All rights reserved.
//

import UIKit
import Alamofire
import AlamofireObjectMapper

class ViewController: UIViewController {
    
    @IBOutlet fileprivate weak var maleCatsLabel: UILabel!
    @IBOutlet fileprivate weak var femaleCatsLabel: UILabel!
    
    fileprivate var catFilter: CatFilter = CatFilter()

    override func viewDidLoad() {
        super.viewDidLoad()
        // Do any additional setup after loading the view, typically from a nib.
        let URL = Constants.General.apiProdEndpoint
        
        Alamofire.request(URL).responseArray { [weak self] (response: DataResponse<[Person]>) in
            
            let peopleArray = response.result.value
            
            if let peopleArray = peopleArray {
                self?.catFilter = CatFilter(people: peopleArray)
                self?.catFilter.filter()
                DispatchQueue.main.async {
                    self?.maleCatsLabel.text = self?.catFilter.maleOwnerCatsString
                    self?.femaleCatsLabel.text = self?.catFilter.femaleOwnerCatsString
                }
            }
        }
    }


}

