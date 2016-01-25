class InfoController < ApplicationController
  def development_mode
    respond_to do |format|
      format.json { render json: {dev_mode: is_dev_mode?}, status: :ok }
    end
  end
end
