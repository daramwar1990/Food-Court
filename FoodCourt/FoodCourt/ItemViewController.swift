//
//  ItemViewController.swift
//  FoodCourt
//
//  Created by Vinayak Balaji Tuptewar on 01/12/20.
//

import UIKit

class ItemViewController: UIViewController,UITableViewDelegate,UITableViewDataSource {
    @IBOutlet weak var itemTableview: UITableView!
    @IBOutlet weak var lbltem: UILabel!
    var lblItem : String?
    var items : [String]?
    var quantity = ["1","2","3","4","5","6","7","8","9","10"]
    
    
    override func viewDidLoad() {
        super.viewDidLoad()
        self.lbltem.text = lblItem
        
    }

    
    
    func tableView(_ tableView: UITableView, numberOfRowsInSection section: Int) -> Int {
        items!.count
    }
    
    func tableView(_ tableView: UITableView, cellForRowAt indexPath: IndexPath) -> UITableViewCell {
        let cell = tableView.dequeueReusableCell(withIdentifier: "cell2", for: indexPath) as! ItemTableViewCell
        cell.itemlabel2?.text = self.items![indexPath.row]
        return cell
    }
    
    func tableView(_ tableView: UITableView, heightForRowAt indexPath: IndexPath) -> CGFloat {
        80
    }
    
    func tableView(_ tableView: UITableView, didSelectRowAt indexPath: IndexPath) {
        tableView.deselectRow(at: indexPath, animated: true)
        print(items![indexPath.row])
    }

}

extension ItemViewController: UIPickerViewDelegate{
    func pickerView(_ pickerView: UIPickerView, titleForRow row: Int, forComponent component: Int) -> String? {
        return quantity[row]
    }
}

extension ItemViewController: UIPickerViewDataSource{
    func numberOfComponents(in pickerView: UIPickerView) -> Int {
        return 1
    }
    
    func pickerView(_ pickerView: UIPickerView, numberOfRowsInComponent component: Int) -> Int {
        return quantity.count
    }
    
    
    
}
