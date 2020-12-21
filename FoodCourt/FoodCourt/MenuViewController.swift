//
//  MenuViewController.swift
//  FoodCourt
//
//  Created by Vinayak Balaji Tuptewar on 30/11/20.
//

import UIKit


struct Categoary {
    let title : String
    let item : [String]
}

class MenuViewController: UIViewController,UITableViewDelegate,UITableViewDataSource {
    
    //data
    
    let data: [Categoary] = [Categoary(title: "Veg", item: ["Panner","Pulav","Rice","Daal Tadka","Veg Biryani","Paneer Tikka","Baigan Bharta","Bhendi Fry","Veg Maratha","Veg Kolhapuri","Tava Pulav"]),Categoary(title: "Non-veg", item: ["Chicken","Mutton","Chicken Biryani","Mutton Biryani", "Tangdi Kabab","Chicken Tandoori","Mutton Tandoori", "Hara Bhara Kabab"]),Categoary(title: "Beverages", item: ["Coffee","Lomonade","Hot Chocolate","Juice","Milkshake","Water","Wine","Milk" ,"Tea"]),Categoary(title: "Starter", item: ["Paneer Chilli","Paneer Chilli Ball","Paneer Chille Flakes","Potato Nuggets","Green Peas Potato","Papad", "Masala Papad","Fry Papad"]),Categoary(title: "Dessert", item: ["Maragarita CupCakes","Banana Pudding","Caramel Apple","CupCakes","Nachos","CrunchWraps", "CasseRole","Krispie Treats"]),Categoary(title: "BreakFast", item: ["Upma","Masala Dosa","Idli","Poha","Wada Sambar","Dahi Wada", "Alloo Bonda","Puri Bhaji"])]
   
    
    
    
  //  var menu = ["Veg","Non-Veg" ,"Starter","Beverages","Desserts","Drinks"]
    var images = [#imageLiteral(resourceName: "Veg.jpeg"),#imageLiteral(resourceName: "Non-veg.jpeg"),#imageLiteral(resourceName: "Beverages.jpeg"),#imageLiteral(resourceName: "Starter.jpeg"),#imageLiteral(resourceName: "Dessert.jpeg"),#imageLiteral(resourceName: "BreakFast.jpeg")]
//    var colour = [UIColor.green,UIColor.red  , UIColor.purple,UIColor.yellow,UIColor.orange,UIColor.blue] as [Any]
    var name = ""
    
    @IBOutlet var tableview: UITableView!
   
    
    override func viewDidLoad() {
        super.viewDidLoad()
      
        
        tableview.delegate = self
        tableview.dataSource = self
        
    }
    
    
    func tableView(_ tableView: UITableView, numberOfRowsInSection section: Int) -> Int {
        self.data.count
        
    }
    
    func tableView(_ tableView: UITableView, cellForRowAt indexPath: IndexPath) -> UITableViewCell {
        let cell = tableView.dequeueReusableCell(withIdentifier: "cell", for: indexPath) as! MenuTableViewCell
        
        cell.lblCell?.text = self.data[indexPath.row].title
        cell.imageCell.image = self.images[indexPath.row]
        
        return cell
        
    }
    
    func tableView(_ tableView: UITableView, heightForRowAt indexPath: IndexPath) -> CGFloat {
        140
    }
    
    func tableView(_ tableView: UITableView, didSelectRowAt indexPath: IndexPath) {
        let itemVC = self.storyboard?.instantiateViewController(withIdentifier: "ivc")as! ItemViewController
        
        itemVC.items = self.data[indexPath.row].item
        itemVC.title = "\(self.data[indexPath.row].title) Items"
        itemVC.lblItem = "\(self.data[indexPath.row].title) Items"
    
        self.navigationController?.pushViewController(itemVC, animated: true)

    }
}//Eoc
    



