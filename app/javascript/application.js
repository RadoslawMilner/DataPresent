// Configure your import map in config/importmap.rb. Read more: https://github.com/rails/importmap-rails
import "@hotwired/turbo-rails"
import "controllers"

// we are using Highcharts. why specifically Highcharts? why not?
import "chartkick/chart.js"
import Highcharts from "highcharts"

window.Highcharts = Highcharts
