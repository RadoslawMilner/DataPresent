module StatisticsHelper
  # method to present data by age
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

  # method to present athletes with countries
  def sporters_by_country
    column_chart sporters_by_country_charts_path, library: {
      title: { text: 'Sporters by country', x: -20},
      yAxis: {
        title: {
          text: 'Sporters count'
        }
      },
      xAxis: {
        title: {
          text: 'Country'
        }
      }
    }
  end

  def results_by_country
  column_chart results_by_country_charts_path, stacked: true, height: '500px', library: {
      title: {text: 'Results by country', x: -20},
      yAxis: {
          title: {
              text: 'Count'
          }
      },
      xAxis: {
          title: {
              text: 'Countries and places'
          }
      }
  }
  end
end
