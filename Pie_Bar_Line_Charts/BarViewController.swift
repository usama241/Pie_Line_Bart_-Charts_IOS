//
//  BarViewController.swift
//  Pie_Bar_Line_Charts
//
//  Created by MacBook on 04/05/2022.
//

import UIKit
import Charts

class BarViewController: UIViewController,ChartViewDelegate {
    var BarChart = BarChartView()
    override func viewDidLoad() {
        super.viewDidLoad()
        BarChart.delegate=self
        // Do any additional setup after loading the view.
    }
    override func viewDidLayoutSubviews() {
        super.viewDidLayoutSubviews()
        BarChart.frame = CGRect(x: 0, y: 0, width: self.view.frame.size.width-50, height: self.view.frame.size.height-150)
        BarChart.center = view.center
        view.addSubview(BarChart)
    
    var entries = [BarChartDataEntry]()
    for x in 0..<10 {
        entries.append(BarChartDataEntry(x: Double(x), y: Double(x)))
    }
        
        let set = BarChartDataSet(entries: entries)
        set.colors = ChartColorTemplates.material()
        let data = BarChartData(dataSet: set)
        BarChart.data=data
    }
}
