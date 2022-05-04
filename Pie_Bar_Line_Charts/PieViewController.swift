//
//  PieViewController.swift
//  Pie_Bar_Line_Charts
//
//  Created by MacBook on 04/05/2022.
//

import UIKit
import Charts

class PieViewController: UIViewController , ChartViewDelegate {
    var PieChart = PieChartView()
    override func viewDidLoad() {
        super.viewDidLoad()
        PieChart.delegate=self
        // Do any additional setup after loading the view.
    }
    override func viewDidLayoutSubviews() {
        super.viewDidLayoutSubviews()
        PieChart.frame = CGRect(x: 0, y: 0, width: self.view.frame.size.width-50, height: self.view.frame.size.height-150)
        PieChart.center = view.center
        view.addSubview(PieChart)
    
    var entries = [ChartDataEntry]()
    for x in 0..<10 {
        entries.append(ChartDataEntry(x: Double(x), y: Double(x)))
    }
        
        let set = PieChartDataSet(entries: entries)
        set.colors = ChartColorTemplates.material()
        let data = PieChartData(dataSet: set)
        PieChart.data=data
    }
}
