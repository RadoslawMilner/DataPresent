class ChartsController < ApplicationController
  def sporters_by_age
    # using rails defined method group we want to extract sporter by age, get a number of this sporters and save it into variable result
    result = Sporter.group(:age).count
    # by using render json:, we are converting all the model instances into JSON.
    # https://buttercms.com/blog/json-serialization-in-rails-a-complete-guide/
    render json: [{name: 'Count', data: result}]
  def sporters_by_country
    # new hash with result
    result = {}
    # gather all countries and each of them map to new array
    Country.all.map do |c|
      result[c.name] = c.sporters.count
    end
    render json: [{name: 'Count', data: result}].count.chart_json
  end
end
