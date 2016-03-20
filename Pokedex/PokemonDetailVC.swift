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
        
        nameLbl.text = pokemon.name.capitalizedString
        
        
        let img = UIImage(named: "\(pokemon.pokedexId)")
        mainImg.image = img
        currentEvoImg.image = img
        
      
        
        pokemon.downloadPokemonDetails { () -> () in
            // this will be called after download is done
            
            self.updateUI()
        }
        
        
    }
    

    
    func updateUI() {
        
        descriptionLbl.text = pokemon.description
        typeLbl.text = pokemon.type
        defenseLbl.text = pokemon.defense
        heightLbl.text = pokemon.height
        weightlbl.text = pokemon.weight
        attackLbl.text = pokemon.attack
        pokeIDLbl.text = "\(pokemon.pokedexId)"
        
        if pokemon.nextEvolutionId == "" {
            
            nextEvLbl.text = "No Evolutiuons"
            nextEvImg.hidden = true
            
        } else {
            
            nextEvImg.hidden = false
            nextEvImg.image = UIImage(named: pokemon.nextEvolutionId)
            var str = "Next Evolution: \(pokemon.nextEvolutionTxt)"
            
            if pokemon.nextEvolutionLevel != "" {
                
                str += "- LVL \(pokemon.nextEvolutionLevel)"
            }
        }

       
        
        
    }

    

    @IBAction func onBackPressed(sender: AnyObject) {
        
       dismissViewControllerAnimated(true, completion: nil)
    }
    
  
    

}


