//
//  FilmlerHucre.swift
//  FilmlerApp
//
//  Created by Fatih Emre Sarman on 31.01.2024.
//

import UIKit

protocol HucreProtocol{
    func sepeteEkleTikla(indexPath:IndexPath)
}

class FilmlerHucre: UICollectionViewCell {
    
    @IBOutlet weak var ImageViewFilm: UIImageView!
    @IBOutlet weak var labelFiyat: UILabel!
    
    var hucreProtocol:HucreProtocol?
    var indexPath:IndexPath?
    
    
    @IBAction func buttonSepeteEkle(_ sender: Any) {
        
    }
}

