//
//  constants.swift
//  pokedex3
//
//  Created by cbeuser on 5/29/17.
//  Copyright © 2017 CBE User. All rights reserved.
//

import Foundation
import AVFoundation
import AVKit


let URL_BASE = "https://pokeapi.co"
let URL_POKEMON = "/api/v1/pokemon/"

typealias DownloadComplete = () -> ()

var musicPlayer: AVAudioPlayer!
let audioSession = AVAudioSession.sharedInstance()
