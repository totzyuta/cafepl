class WelcomeController < ApplicationController
<<<<<<< HEAD
  PER = 10

  def index
    @q = Event.page(params[:page]).per(PER).order(:start_time).search(search_params)

    @events = @q.result(distinct: true)
  end

  private

  def search_params
    params.require(:q).permit!
  rescue
    { start_time_gteq: Time.zone.now }
=======
  def index
    @events = Event.where('start_time' > ?', Time.zone.now).order(:start_time)
>>>>>>> 2ab2344959793e0755899109882cf6ce4bba394d
  end
end
