//
//  SecondViewController.swift
//  finalProjectAni
//
//  Created by apple on 6/1/22.
//

import UIKit

class SecondViewController: UIViewController, UITableViewDelegate {
   
    @IBOutlet weak var technicsTableView: UITableView!
    
    
    
    
    
    private let technicPicture = URL(string: "https://dummyjson.com/products")
    private var technics = [Technics]()
    private var productItems:[ItemCategory] = []
    
    func tableView(_ tableView: UITableView, numberOfRowsInSection section: Int) -> Int {
        return productItems[section].products.count
    }
    
   
    func dataJson () {
        URLSession.shared.dataTask(with: technicPicture!) {
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
                guard let decodedData = try? decoder.decode(Technics.self, from: data) else {
                    return
                }
               // self.technics = decodedData.products
                DispatchQueue.main.async {
                //    self.technicsTableView.reloadData()
                }
            }
        }.resume()
    }

    @IBOutlet weak var label: UILabel!
    
   
    
    override func viewDidLoad() {
        super.viewDidLoad()
        technicsTableView.delegate = self
        dataJson()
        

    }
    

   

}
