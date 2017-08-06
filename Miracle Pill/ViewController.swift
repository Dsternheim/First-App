//
//  ViewController.swift
//  Miracle Pill
//
//  Created by David Sternheim on 3/12/17.
//  Copyright © 2017 David Sternheim. All rights reserved.
//

import UIKit

class ViewController: UIViewController, UIPickerViewDataSource, UIPickerViewDelegate {

    @IBOutlet weak var mainIcon: UIImageView!
    @IBOutlet weak var titleLabel: UILabel!
    @IBOutlet weak var priceLabel: UILabel!
    @IBOutlet weak var divider: UIView!
    @IBOutlet weak var nameLabel: UILabel!
    @IBOutlet weak var nameTextBox: UITextField!
    @IBOutlet weak var addressLabel: UILabel!
    @IBOutlet weak var addressTextBox: UITextField!
    @IBOutlet weak var cityLabel: UILabel!
    @IBOutlet weak var cityTextBox: UITextField!
    @IBOutlet weak var statePicker: UIPickerView!
    
    @IBOutlet weak var statePickerBtn: UIButton!
    
    @IBOutlet weak var stateLabel: UILabel!
    @IBOutlet weak var country: UILabel!
    
    @IBOutlet weak var countryTextBox: UITextField!
    
    @IBOutlet weak var zipcode: UILabel!
    
    @IBOutlet weak var zipcodeTextBox: UITextField!
    
    @IBOutlet weak var buyNowBtn: UIButton!
    @IBOutlet weak var successBtn: UIButton!
    //declaring the array of names for the state picker a.k.a the list of states
    var pickerData = ["Alabama", "Conneticut", "Georgia", "New York", "Rhode Island"];
    var chosenState = "";
    
    override func viewDidLoad() {
        super.viewDidLoad()
        // Do any additional setup after loading the view, typically from a nib.
        statePicker.dataSource = self;
        statePicker.delegate = self;
    }

    override func didReceiveMemoryWarning() {
        super.didReceiveMemoryWarning()
        // Dispose of any resources that can be recreated.
    }

    @IBAction func stateBtnPressed(_ sender: Any) {
        statePicker.isHidden=false;
        country.isHidden=true;
        countryTextBox.isHidden=true;
        zipcode.isHidden=true;
        zipcodeTextBox.isHidden=true;
    }

    @IBAction func BuyNowBtnPressed(_ sender: Any) {
        mainIcon.isHidden=true;
        titleLabel.isHidden=true;
        priceLabel.isHidden=true;
        nameLabel.isHidden=true;
        nameTextBox.isHidden=true;
        addressLabel.isHidden=true;
        addressTextBox.isHidden=true;
        cityLabel.isHidden=true;
        cityTextBox.isHidden=true;
        statePicker.isHidden=true;
        statePickerBtn.isHidden=true;
        country.isHidden=true;
        countryTextBox.isHidden=true;
        zipcode.isHidden=true;
        zipcodeTextBox.isHidden=true;
        buyNowBtn.isHidden=true;
        stateLabel.isHidden=true;
        divider.isHidden=true;
        successBtn.isHidden=false;
    }
    
    @IBAction func successBtnPressed(_ sender: Any) {
        mainIcon.isHidden=false;
        titleLabel.isHidden=false;
        priceLabel.isHidden=false;
        nameLabel.isHidden=false;
        nameTextBox.isHidden=false;
        addressLabel.isHidden=false;
        addressTextBox.isHidden=false;
        cityLabel.isHidden=false;
        cityTextBox.isHidden=false;
        statePickerBtn.isHidden=false;
        country.isHidden=false;
        countryTextBox.isHidden=false;
        zipcode.isHidden=false;
        zipcodeTextBox.isHidden=false;
        buyNowBtn.isHidden=false;
        stateLabel.isHidden=false;
        divider.isHidden=false;
        successBtn.isHidden=true;
    }
    //number of components is like the number of columns in a spreadsheet, that's why we return 1 in this function since the only column will be the name of the states listed
    func numberOfComponents(in pickerView: UIPickerView) -> Int {
        return 1;
    }
    
    //this determines the amount of rows in the picker (essentially how many items will there be for this example)
    func pickerView(_ pickerView: UIPickerView, numberOfRowsInComponent component: Int) -> Int {
        return pickerData.count; // returns the amount of items inside the array (arrayName.count)
    }
    
    //determines which item has been selected
    func pickerView(_ pickerView: UIPickerView, titleForRow row: Int, forComponent component: Int) -> String? {
        return pickerData[row]; //returns the name of the specific item within the array that the picker lands on, data is selected directly from the array of strings
    }
    
    //essentially "grabs" the item out of the array and sets it onto the button
    func pickerView(_ pickerView: UIPickerView, didSelectRow row: Int, inComponent component: Int) {
        statePickerBtn.setTitle(pickerData[row], for: UIControlState.normal);
        statePicker.isHidden=true;
        country.isHidden=false;
        countryTextBox.isHidden=false;
        zipcode.isHidden=false;
        zipcodeTextBox.isHidden=false;
    }
}

