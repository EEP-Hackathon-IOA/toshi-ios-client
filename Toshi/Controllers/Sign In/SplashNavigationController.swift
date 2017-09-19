// Copyright (c) 2017 Token Browser, Inc
//
// This program is free software: you can redistribute it and/or modify
// it under the terms of the GNU General Public License as published by
// the Free Software Foundation, either version 3 of the License, or
// (at your option) any later version.
//
// This program is distributed in the hope that it will be useful,
// but WITHOUT ANY WARRANTY; without even the implied warranty of
// MERCHANTABILITY or FITNESS FOR A PARTICULAR PURPOSE.  See the
// GNU General Public License for more details.
//
// You should have received a copy of the GNU General Public License
// along with this program.  If not, see <http://www.gnu.org/licenses/>.

import UIKit

public class SplashNavigationController: UINavigationController {

    convenience init() {
        self.init(rootViewController: SplashViewController())
    }
    
    public override func viewDidLoad() {
        super.viewDidLoad()
        
        navigationBar.barStyle = .default
        navigationBar.setBackgroundImage(UIImage(), for: .any, barMetrics: .default)
        navigationBar.shadowImage = UIImage()
        
        let titleTextAttributes = [
            NSFontAttributeName: Theme.regular(size: 17),
            NSForegroundColorAttributeName: Theme.darkTextColor
        ]
        
        navigationBar.titleTextAttributes = titleTextAttributes
    }
    
    open override var preferredStatusBarStyle: UIStatusBarStyle {
        return viewControllers.count == 1 ? .lightContent : .default
    }
}
