class MembershipsController < ApplicationController

  def create
    @membership = Membership.new(membership_params)
    if @membership.valid?
      @membership.save
      render json: @membership, status: :ok
    else
      render json: {message: @membership.errors.full_messages}
    end
  end

  private

  def membership_params
    params.permit(:gym_id, :client_id, :charge)
  end
end
