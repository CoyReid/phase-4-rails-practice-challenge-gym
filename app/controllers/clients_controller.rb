class ClientsController < ApplicationController
  before_action :find_client, only: [:show]
  
  def show
    if @client
      render json: @client.total_amount, status: :ok
    else
      render json: {"error": "Client not found"}, status: :not_found
    end

    def find_client
      @client = Client.find_by(id: params[:id])
    end
end
