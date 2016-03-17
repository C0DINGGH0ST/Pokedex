//
//  PokemonDetailVC.swift
//  Pokedex
//
//  Created by Tbakhi on 3/15/16.
//  Copyright © 2016 Tbakhi. All rights reserved.
//

import UIKit

class PokemonDetailVC: UIViewController {
    
    @IBOutlet weak var nameLbl: UILabel!
    
    var pokemon: Pokemon!

    override func viewDidLoad() {
        super.viewDidLoad()
        
       

    }

    @IBAction func onBackPressed(sender: AnyObject) {
        
       self.dismissViewControllerAnimated(true, completion: nil)
    }
  
    

}
