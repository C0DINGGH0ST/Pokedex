//
//  Pokemon.swift
//  Pokedex
//
//  Created by Tbakhi on 3/14/16.
//  Copyright © 2016 Tbakhi. All rights reserved.
//

import Foundation
import Alamofire


class Pokemon {
    
    
    private var _name: String!
    private var _pokedexId: Int!
    private var _description: String!
    private var _type:String!
    private var _defense:String!
    private var _height:String!
    private var _weight:String!
    private var _attack:String!
    private var _nextEvolutionText:String!
    private var _pokemonURL:String!
    
    
    
    
    
    var name: String {
        
        return _name
    }
    
    var pokedexId: Int {
        
        
        return _pokedexId
        
    }
    
    
    
    init(name: String, pokedexId: Int) {
        
        
        self._name = name
        self._pokedexId = pokedexId
        
        _pokemonURL = "\(URL_BASE)\(URL_POKEMON)\(self.pokedexId)/"
        
    }
    
    func downloadPokemonDetails(completed:DownloadComplete) {
        
        let url = NSURL(string: _pokemonURL)!
        Alamofire.request(.GET, url).responseJSON { response in
            let result = response.result
            
            if let dict = result.value as? Dictionary<String, AnyObject> {
                // convert JSON data into dictionary
                
                if let weight = dict["weight"] as? String {        // words in "" must match json
                    
                    self._weight = weight
                }
                
                if let height = dict["height"] as? String {
                    
                    self._height = height
                
            }
                
                if let attack = dict["attack"] as? Int {
                    
                    self._attack = "\(attack)"
                    
                }
                
                if let defense = dict["defense"] as? Int {
                    
                    self._defense = "\(defense)"
                    
                }
                
                print(self._height)
                print(self._defense)
                print(self._attack)
                print(self._weight)
                
                if let types = dict["types"] as? [Dictionary<String, String>] where types.count > 0 {  // where is a conditional, if successfully converted, make sure count is greater than zero.
                    
                    if let name = types[0]["name"] { // return first type, then grab name property
                        
                        self._type = name.capitalizedString
                        
                        
                        
                        
                    }
                    
                    if types.count > 1 {
                        
                        for var x = 1; x < types.count; x++ {
                            
                            if let name = types[x]["name"] {
                                
                                self._type! += "\(name.capitalizedString)"
                            }
                        }
                    }
                        
                        
                } else {
                    
                    self._type = ""
                }
                    print(self._type)
                }
            
            
            
            
            
            
            
          
            
        
    }
    
    
    }

}

