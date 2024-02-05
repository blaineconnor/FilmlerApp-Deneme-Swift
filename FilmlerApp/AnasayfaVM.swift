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
        veritabaniKopyala()
        filmlerListesi = frepo.filmlerListesi
        filmleriYukle()
    }
    
    func filmleriYukle(){
        frepo.filmleriYukle()
    }
    
    func veritabaniKopyala(){
        let bundleYolu = Bundle.main.path(forResource: "filmler", ofType: ".sqlite")
        let hedefYol = NSSearchPathForDirectoriesInDomains(.documentDirectory, .userDomainMask, true).first!
        let kopyalanacakYer = URL(fileURLWithPath: hedefYol).appendingPathComponent("filmler.sqlite")
        let fileManager = FileManager.default
        if fileManager.fileExists(atPath: kopyalanacakYer.path){
            print("Veritabanı zaten var.")
        }else{
            do{
                try fileManager.copyItem(atPath: bundleYolu!, toPath: kopyalanacakYer.path)
            }catch{}
        }
    }
}
