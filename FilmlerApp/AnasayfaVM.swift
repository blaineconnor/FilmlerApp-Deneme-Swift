//
//  AnasayfaVM.swift
//  FilmlerApp
//
//  Created by Fatih Emre Sarman on 2.02.2024.
//

import Foundation
import RxSwift

class AnasayfaVM{
    var frepo = FilmlerDaoRepo()
    var filmlerListesi = BehaviorSubject<[Filmler]>(value: [Filmler]())
    
    init(){
        filmlerListesi = frepo.filmlerListesi
        filmleriYukle()
    }
    
    func filmleriYukle(){
        frepo.filmleriYukle()
    }
}
