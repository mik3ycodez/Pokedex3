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
    @IBOutlet weak var mainImg: UIImageView!
    @IBOutlet weak var descriptionLbl: UILabel!
    
    @IBOutlet weak var typeLbl: UILabel!
    @IBOutlet weak var defenseLbl: UILabel!
    @IBOutlet weak var heightLbl: UILabel!
    @IBOutlet weak var pokedexLbl: UILabel!
    @IBOutlet weak var weightLbl: UILabel!
    @IBOutlet weak var attackLbl: UILabel!
    
    @IBOutlet weak var evoLbl: UILabel!
    @IBOutlet weak var currentEvoImg: UIImageView!
    @IBOutlet weak var nextEvoImg: UIImageView!
    
    var pokemon: Pokemon!
    
    
    override func viewDidLoad() {
        super.viewDidLoad()
        pokemon.downloadPokemonDetails {
            self.updateUI()
        }
        
    }
    
    @IBAction func backBtnPressed(_ sender: UIButton) {
        dismiss(animated: true, completion: nil)
    }
    
    func updateUI() {
        let img = UIImage(named: "\(pokemon.pokedexId)")
        
        nameLbl.text = pokemon.name.capitalized
        mainImg.image = img
        descriptionLbl.text = ""
        typeLbl.text = pokemon.type
        defenseLbl.text = pokemon.defense
        heightLbl.text = pokemon.height
        pokedexLbl.text = "\(pokemon.pokedexId)"
        weightLbl.text = pokemon.weight
        attackLbl.text = pokemon.attack
        //evoLbl.text = "Next Evolution: \() Lvl \()"  //Next Evolution: Venusaur Lvl 32
        currentEvoImg.image = img
        nextEvoImg.image = UIImage(named: "\(self.pokemon.pokedexId + 1)")
    }
    
    
}
