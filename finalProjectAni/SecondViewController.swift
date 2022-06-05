//
//  SecondViewController.swift
//  finalProjectAni
//
//  Created by apple on 6/1/22.
//

import UIKit

class SecondViewController: UIViewController, UITableViewDataSource {
    func tableView(_ tableView: UITableView, numberOfRowsInSection section: Int) -> Int {
        return productItems[section].products.count
    }
    
    func tableView(_ tableView: UITableView, cellForRowAt indexPath: IndexPath) -> UITableViewCell {
        
    }
    
    
    
   
 final let url = URL(string: "https://dummyjson.com/products")

    
    /*func downloadJson() {
        guard let downloadUrl = url else {return}
        URLSession.shared.dataTask(with: downloadUrl) {
            data, URLResponse, error in
            guard let data = data, error == nil. URLResponse != nil else {}
            }
            print ("downloaded")
        }.resume()
    }*/
     @IBOutlet weak var tableViewCell: UITableView!
    
    
    private var productItems:[ItemCategory] = []
    
    
 /*   private let technicPicture = URL(string: "https://dummyjson.com/products")
    private var technics = [Technics]()
    private var productItems:[ItemCategory] = []
    
    func tableView(_ tableView: UITableView, numberOfRowsInSection section: Int) -> Int {
        return productItems[section].products.count
    }*/
    
   
    func downloadJson () {
        guard let downloadUrl = url else {return}
        URLSession.shared.dataTask(with: downloadUrl) {
            data, URLResponse, error in
            if let error = error {
                print(error.localizedDescription)
                return
            }
            guard let data = data else {
                return
            }
            do {
                let decoder = JSONDecoder()
                guard let decodedData = try? decoder.decode(Products.self, from: data) else {
                    return
                }
             //   self.Technics = decodedData.products
                DispatchQueue.main.async {
                self.tableViewCell.reloadData()
                }
            }
        }.resume()
    }

    @IBOutlet weak var label: UILabel!
    
   
    
    override func viewDidLoad() {
        super.viewDidLoad()
        downloadJson()
        

    }
    
   
    
    
    
}

    

   

     
