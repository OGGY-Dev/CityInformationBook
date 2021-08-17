//
//  ViewController.swift
//  SehirTanitimKitabi
//
//  Created by Oğulcan DEMİRTAŞ on 4.08.2021.
//

import UIKit

class ViewController: UIViewController,UITableViewDelegate,UITableViewDataSource {

    @IBOutlet weak var tableView: UITableView!
    var kullaniciSecimi : Sehir?
    var sehirDizisi = [Sehir]()
    override func viewDidLoad() {
        super.viewDidLoad()
        // Do any additional setup after loading the view.
        
        tableView.delegate = self
        tableView.dataSource = self
        
        //Şehirler
        let istanbul = Sehir(isim: "İstanbul", bolge: "Marmara", gorsel: UIImage(named: "istanbul")!)
        let ankara = Sehir(isim: "Ankara", bolge: "İç Anadolu", gorsel: UIImage(named: "ankara")!)
        let mersin = Sehir(isim: "Mersin", bolge: "Akdeniz", gorsel: UIImage(named: "mersin")!)
        let bursa = Sehir(isim: "Bursa", bolge: "Ege", gorsel: UIImage(named: "bursa")!)
        
        sehirDizisi = [istanbul,ankara,mersin,bursa]
        
        
        
    }
    func tableView(_ tableView: UITableView, numberOfRowsInSection section: Int) -> Int {
        return sehirDizisi.count
    }
    
    func tableView(_ tableView: UITableView, cellForRowAt indexPath: IndexPath) -> UITableViewCell {
        let cell = UITableViewCell()
        cell.textLabel?.text = sehirDizisi[indexPath.row].isim
        return cell
        
    }
    
    func tableView(_ tableView: UITableView, didSelectRowAt indexPath: IndexPath) {
         kullaniciSecimi = sehirDizisi[indexPath.row]
        performSegue(withIdentifier: "toVC2", sender: nil)
    }
    
    override func prepare(for segue: UIStoryboardSegue, sender: Any?) {
        if segue.identifier == "toVC2" {
            let destinationVC = segue.destination as! ViewController2
            destinationVC.secilenSehir = kullaniciSecimi
        }
    }


}

