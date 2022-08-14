//
//  CharchterCountsView.swift
//  TwitterCounter
//
//  Created by Noha Mohamed on 13/08/2022.
//

import UIKit

enum CharchtersCountViewType{
    case typed
    case remaining
}

class CharchtersCountView: UIView ,NibLoadable{
    //MARK: Outlets
    @IBOutlet weak var viewTitleLabel: UILabel!
    @IBOutlet weak var slashLabel: UILabel!
    @IBOutlet weak var charchtersCountLabel: UILabel!
    @IBOutlet weak var totalCount: UILabel!
    
    var viewType: CharchtersCountViewType?{
        didSet{
            switch viewType {
                case .remaining:
                    slashLabel.text = ""
                    totalCount.text = ""
            default:break
            }
        }
    }
    override func awakeFromNib() {
        super.awakeFromNib()
        loadNibContent()
    }
    func setText(_ str: Int) {
        charchtersCountLabel.text = "\(str)"
    }
}
