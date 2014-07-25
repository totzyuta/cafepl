<<<<<<< HEAD
# -*- coding: utf-8 -*-
=======
>>>>>>> 2ab2344959793e0755899109882cf6ce4bba394d
class EventsController < ApplicationController
  before_action :authenticate, except: :show

  def show
    @event = Event.find(params[:id])
<<<<<<< HEAD
    @ticket = current_user && current_user.tickets.find_by(event_id: params[:id])
    @tickets = @event.tickets.includes(:user).order(:created_at)
  end

=======
  end
  
>>>>>>> 2ab2344959793e0755899109882cf6ce4bba394d
  def new
    @event = current_user.created_events.build
  end

  def create
    @event = current_user.created_events.build(event_params)
    if @event.save
<<<<<<< HEAD
      redirect_to @event, notice: '作成しました'
=======
      redirect_to @event, notice: 'Created'
>>>>>>> 2ab2344959793e0755899109882cf6ce4bba394d
    else
      render :new
    end
  end

<<<<<<< HEAD
  def edit
    @event = current_user.created_events.find(params[:id])
  end

  def update
    @event = current_user.created_events.find(params[:id])
    if @event.update(event_params)
      redirect_to @event, notice: '更新しました'
    else
      render :edit
    end
  end

  def destroy
    @event = current_user.created_events.find(params[:id])
    @event.destroy!
    redirect_to root_path, notice: '削除しました'
  end

=======
>>>>>>> 2ab2344959793e0755899109882cf6ce4bba394d
  private

  def event_params
    params.require(:event).permit(
<<<<<<< HEAD
      :name, :place, :event_image, :event_image_cache,
      :remove_event_image, :content, :start_time, :end_time
    )
  end
end
=======
      :name, :place, :content, :start_time, :end_time
    )
  end
end

>>>>>>> 2ab2344959793e0755899109882cf6ce4bba394d
