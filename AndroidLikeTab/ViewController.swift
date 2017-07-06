//
//  ViewController.swift
//  test
//
//  Created by admin on 7/6/17.
//  Copyright © 2017 admin. All rights reserved.
//

import UIKit

import Foundation
import XLPagerTabStrip

 class ViewController: ButtonBarPagerTabStripViewController {
    
    @IBOutlet weak var shadowView: UIView!
    let blueInstagramColor = UIColor(red: 37/255.0, green: 111/255.0, blue: 206/255.0, alpha: 1.0)
    
    override func viewDidLoad() {
        // change selected bar color
        settings.style.buttonBarBackgroundColor = .white
        settings.style.buttonBarItemBackgroundColor = .white
        settings.style.selectedBarBackgroundColor = blueInstagramColor
        settings.style.buttonBarItemFont = .boldSystemFont(ofSize: 14)
        settings.style.selectedBarHeight = 2.0
        settings.style.buttonBarMinimumLineSpacing = 0
        settings.style.buttonBarItemTitleColor = .black
        settings.style.buttonBarItemsShouldFillAvailableWidth = true
        settings.style.buttonBarLeftContentInset = 0
        settings.style.buttonBarRightContentInset = 0
        
        changeCurrentIndexProgressive = { [weak self] (oldCell: ButtonBarViewCell?, newCell: ButtonBarViewCell?, progressPercentage: CGFloat, changeCurrentIndex: Bool, animated: Bool) -> Void in
            guard changeCurrentIndex == true else { return }
            oldCell?.label.textColor = .black
            newCell?.label.textColor = self?.blueInstagramColor
        }
        super.viewDidLoad()
    }
    
    // MARK: - PagerTabStripDataSource
    
    override func viewControllers(for pagerTabStripController: PagerTabStripViewController) -> [UIViewController] {
        let storyboard = UIStoryboard(name: "Main", bundle: nil)
        let childOneVC = storyboard.instantiateViewController(withIdentifier: "childOneVC")
        let childTwoVC = storyboard.instantiateViewController(withIdentifier: "childTwoVC")
        return [childOneVC, childTwoVC]
    }
    
    // MARK: - Custom Action
    
    @IBAction func closeAction(_ sender: UIButton) {
        dismiss(animated: true, completion: nil)
    }
}
