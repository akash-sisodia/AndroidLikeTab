 

import Foundation
import XLPagerTabStrip

class ChildExampleViewController: UIViewController, IndicatorInfoProvider {

    var itemInfo: IndicatorInfo = "View"
 
 
    override func viewDidLoad() {
        super.viewDidLoad()

       
    }

    // MARK: - IndicatorInfoProvider

    func indicatorInfo(for pagerTabStripController: PagerTabStripViewController) -> IndicatorInfo {
        return itemInfo
    }
}
