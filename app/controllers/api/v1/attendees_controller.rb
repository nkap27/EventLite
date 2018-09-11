class Api::V1::AttendeesController < ApplicationController
  before_action :set_attendee, only: [:show,:update,:destroy]

  def index
    attendees = Attendee.all
    render json: attendees, status: 200
  end

  def create
    attendee = Attendee.create(attendee_params)
    render json: attendee, status: 201
  end

  def update
    @attendee.update(attendee_params)
    render json: @attendee, status: 200
  end

  def destroy
    attendeeId = @attendee.id
    @attendee.destroy
    render json: {message:"Zap! attendee deleted", attendeeId:attendeeId}
  end

  def show
    render json: @attendee, status: 200
  end

  private
  def attendee_params
    params.permit(:name, :image_url, :event_id)
  end

  def set_attendee
    @attendee = Attendee.find(params[:id])
  end

end
