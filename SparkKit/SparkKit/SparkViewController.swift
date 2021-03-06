/**
 *  SparkViewController.swift
 *  SparkKit
 *
 *  Created by Steve Elliott on 09/30/2016.
 *  Copyright (c) 2016 eBay Software Foundation.
 *
 *  Licensed under the Apache License, Version 2.0 (the "License");
 *  you may not use this file except in compliance with the License.
 *  You may obtain a copy of the License at
 *
 *  http://www.apache.org/licenses/LICENSE-2.0
 *
 *  Unless required by applicable law or agreed to in writing, software
 *  distributed under the License is distributed on an "AS IS" BASIS,
 *  WITHOUT WARRANTIES OR CONDITIONS OF ANY KIND, either express or implied.
 *  See the License for the specific language governing permissions and
 *  limitations under the License.
 **/

import UIKit

import SparkChamber


open class SparkViewController : UIViewController {
	override open func viewDidAppear(_ animated: Bool) {
		super.viewDidAppear(animated)
		
		let views: Array = self.view.subviews + [self.view]
		SparkDetector.trackDisplay(forViews: views as NSArray)
	}
	
	override open func viewDidDisappear(_ animated: Bool) {
		super.viewDidDisappear(animated)
		
		let views: Array = self.view.subviews + [self.view]
		SparkDetector.trackEndDisplaying(forViews: views as NSArray)
	}
}
