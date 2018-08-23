//
//  DataTableViewCell.swift
//  Decred Wallet
//  Copyright © 2018 The Decred developers.
//  see LICENSE for details.

import Foundation
import UIKit

struct DataTableViewCellData {
    
    init(text: String) {
        self.text = text
        
    }
    var text: String
}

class DataTableViewCell : BaseTableViewCell {
    
    @IBOutlet weak var dataImage: UIImageView!
    @IBOutlet weak var dataText: UILabel!
    var count = 0
    
    override func awakeFromNib() {
        self.dataText?.font = UIFont.systemFont(ofSize: 16)
    }
    
    override class func height() -> CGFloat {
        return 80
    }
    
    override func setData(_ data: Any?) {
        if let data = data as? DataTableViewCellData {
            //self.dataImage.setRandomDownloadImage(80, height: 80)
            print("am in here")
            print(self.count += 1)
            print(data.text)
            self.dataText.text = data.text
            
            if(data.text.hasPrefix("-")){
                self.dataImage?.image = UIImage(named: "debit")
            }
            else{
                self.dataImage?.image = UIImage(named: "credit")
            }
        }
    }
}