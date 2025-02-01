module Events
  class EventsController < ApplicationController
    def index
      @events = Event.all
    end

    def show
      @event = Event.find(params[:event_id])
    end
  end
end
