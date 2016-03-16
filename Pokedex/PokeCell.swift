//
//  PokeCell.swift
//  Pokedex
//
//  Created by Tbakhi on 3/14/16.
//  Copyright © 2016 Tbakhi. All rights reserved.
//

import UIKit

class PokeCell: UICollectionViewCell {
    
    
    @IBOutlet weak var thumbImg: UIImageView!
    
    @IBOutlet weak var nameLbl: UILabel!
    
    var pokemon:Pokemon!
    
    required init?(coder aDecoder: NSCoder) {
        
        super.init(coder: aDecoder)
        
        layer.cornerRadius = 5.0
    }
    
    func configureCell(pokemon:Pokemon) {
        
        self.pokemon = pokemon          // SELF.POKEMON, pokemon is the samename as the parameter in the configure cell function, thats why you use self
        
        
        nameLbl.text = self.pokemon.name.capitalizedString
        thumbImg.image = UIImage(named: "\(self.pokemon.pokedexId)")
    }
    
}
