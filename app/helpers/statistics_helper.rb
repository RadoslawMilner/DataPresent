module StatisticsHelper
  def sporters_by_age
    # use defined method bar_chart from chartkick
    # draw chart
    # draw its height and by using hashes write how this chart have to look like
    # sporters by age path comes from collection routes
    bar_chart sporters_by_age_charts_path, height: '500px', library: {
      title: {text: 'Sporters by age', x: -20},
      yAxis: {
        # we can't afford to have any decimals numbers in age
        allowDecimals: false,
        title: {
          text: 'Ages count'
        }
      },
      xAxis: { 
        title: {
          text: 'Age'
        }
      }
    }
  end
end
