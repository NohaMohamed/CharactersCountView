//
//  CharacterCountsView.swift
//  TwitterCounter
//
//  Created by Noha Mohamed on 13/08/2022.
//

import UIKit

public enum CharactersCountViewType{
    case typed
    case remaining
}

public class CharactersCountView: UIView {
    //MARK: Outlets
    @IBOutlet weak var viewTitleLabel: UILabel!
    @IBOutlet weak var slashLabel: UILabel!
    @IBOutlet weak var charactersCountLabel: UILabel!
    @IBOutlet weak var totalCount: UILabel!
    
    public var viewType: CharactersCountViewType?{
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
    public func setTitle(_ title: String){
        viewTitleLabel.text = title
    }
    public func setCharactersCount(_ count: Int) {
        charactersCountLabel.text = "\(count)"
    }
    public func setTotalCount(_ count: Int) {
        totalCount.text = "\(count)"
    }
    func loadNibContent() {
        guard let view = loadViewFromNib() else { return }
        view.frame = bounds
        addSubview(view)
    }
    private func loadViewFromNib() -> UIView? {
        let nib = UINib(nibName: String(describing: Self.self), bundle: Bundle.module)
        return nib.instantiate(withOwner: self, options: nil).first as? UIView
    }
}
