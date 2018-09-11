class Api::V1::EventsController < ApplicationController
  before_action :set_event, only: [:show,:update,:destroy]

  def index
    # byebug
    events = Event.all
    render json: events, status: 200
  end

  def create
    event = Event.create(event_params)
    render json: event, status: 201
  end

  def update
    @event.update(event_params)
    render json: @event, status: 200
  end

  def destroy
    eventId = @event.id
    @event.destroy
    render json: {message:"Zap! event deleted", eventId:eventId}
  end

  def show
    render json: @event, status: 200
  end

  private
  def event_params
    params.permit(:name, :image_url, :date, :description)
  end

  def set_event
    @event = Event.find(params[:id])
  end
end
