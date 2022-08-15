//
//  CharchterCountsView.swift
//  TwitterCounter
//
//  Created by Noha Mohamed on 13/08/2022.
//

import UIKit

public enum CharchtersCountViewType{
    case typed
    case remaining
}

public class CharchtersCountView: UIView ,NibLoadable{
    //MARK: Outlets
    @IBOutlet weak var viewTitleLabel: UILabel!
    @IBOutlet weak var slashLabel: UILabel!
    @IBOutlet weak var charchtersCountLabel: UILabel!
    @IBOutlet weak var totalCount: UILabel!
    
    public var viewType: CharchtersCountViewType?{
        didSet{
            switch viewType {
                case .remaining:
                    slashLabel.text = ""
                    totalCount.text = ""
            default:break
            }
        }
    }
    public override func awakeFromNib() {
        super.awakeFromNib()
        loadNibContent()
    }
    public func setCharchtersCounts(_ count: Int) {
        charchtersCountLabel.text = "\(count)"
    }
}
