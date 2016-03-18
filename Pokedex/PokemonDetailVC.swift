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
    @IBOutlet weak var mainImg: UIImageView!
    @IBOutlet weak var descriptionLbl: UILabel!
    @IBOutlet weak var typeLbl: UILabel!
    @IBOutlet weak var defenseLbl: UILabel!
    @IBOutlet weak var heightLbl: UILabel!
    @IBOutlet weak var weightlbl: UILabel!
    @IBOutlet weak var attackLbl: UILabel!
    @IBOutlet weak var pokeIDLbl: UILabel!
    @IBOutlet weak var nextEvLbl: UILabel!
    @IBOutlet weak var currentEvoImg: UIImageView!
    @IBOutlet weak var nextEvImg: UIImageView!
    
    
    
    
    
    
    
    var pokemon: Pokemon!

    override func viewDidLoad() {
        super.viewDidLoad()
        
        mainImg.image = UIImage(named: "\(pokemon.pokedexId)")
        
        pokemon.downloadPokemonDetails { () -> () in
            // this will be called after download is done
            
            
            
            
            
            
        }
        
       

    }

    @IBAction func onBackPressed(sender: AnyObject) {
        
       dismissViewControllerAnimated(true, completion: nil)
    }
    
  
    

}


