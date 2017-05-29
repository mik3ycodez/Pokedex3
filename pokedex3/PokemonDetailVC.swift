//
//  PokemonDetailVC.swift
//  pokedex3
//
//  Created by cbeuser on 5/28/17.
//  Copyright © 2017 CBE User. All rights reserved.
//

import UIKit

class PokemonDetailVC: UIViewController {
    
    @IBOutlet weak var nameLbl: UILabel!
    
    var pokemon: Pokemon!
    
    
    override func viewDidLoad() {
        super.viewDidLoad()
        
        nameLbl.text = pokemon.name
        
    }
    
    
    
    
}
