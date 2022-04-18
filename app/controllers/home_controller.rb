class HomeController < ApplicationController
  def index
    time = Time.now.strftime("%H:%M")

    @morning = time >= "00" && time < "12"
    @morning_say = "buenos días 🌞"

    @afternoon = time >= "12" && time <= "19"
    @afternoon_say = "buenas tardes 🌞"

    @night = time > "19"
    @night_say = "buenas noches 🌒"
  end
end
