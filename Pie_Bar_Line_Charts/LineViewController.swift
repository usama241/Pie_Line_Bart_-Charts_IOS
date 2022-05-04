//
//  LineViewController.swift
//  Pie_Bar_Line_Charts
//
//  Created by MacBook on 04/05/2022.
//

import UIKit
import Charts

class LineViewController: UIViewController, ChartViewDelegate {
    var lineChart = LineChartView()
    override func viewDidLoad() {
        super.viewDidLoad()
        lineChart.delegate=self
        // Do any additional setup after loading the view.
    }
    override func viewDidLayoutSubviews() {
        super.viewDidLayoutSubviews()
        lineChart.frame = CGRect(x: 0, y: 0, width: self.view.frame.size.width-50, height: self.view.frame.size.height-150)
        lineChart.center = view.center
        view.addSubview(lineChart)
    
    var entries = [ChartDataEntry]()
    for x in 0..<10 {
        entries.append(ChartDataEntry(x: Double(x), y: Double(x)))
    }
        
        let set = LineChartDataSet(entries: entries)
        set.colors = ChartColorTemplates.material()
        let data = LineChartData(dataSet: set)
        lineChart.data=data
    }
}
