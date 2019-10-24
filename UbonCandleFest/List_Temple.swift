//
//  List_Temple.swift
//  UbonCandleFest
//
//  Created by science on 24/10/2562 BE.
//  Copyright © 2562 science. All rights reserved.
//

import UIKit
import FirebaseDatabase

class List_Temple: UIViewController {
    
    @IBOutlet weak var name_temple: UILabel!
    
    override func viewDidLoad() {
        super.viewDidLoad()
        
        let ref = Database.database().reference()
        ref.child("templeM/-LGiXaq19zUC_m9w-gC6").observeSingleEvent(of: .value, with: {
            
            (snapshot) in
            let value = snapshot.value as? NSDictionary
            
            let name = value?["temple"] as? String ?? ""
            
            self.name_temple.text = name
            
            print(name)
            
            })
                { (error) in print(error.localizedDescription) }
    }
}
