class InfoController < ApplicationController
  def development_mode
    respond_to do |format|
      format.json { render json: {dev_mode: true}, status: :ok }
    end
  end
end
