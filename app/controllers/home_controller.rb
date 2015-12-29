class HomeController < ApplicationController
  def index
    @user = User.first.decorate
    respond_to do |format|
      format.html
      format.pdf { render pdf: "MaximilianoFelice", disposition: 'inline', layout: "layouts/pdf.html", show_as_html: params[:debug].present?, formats: [:html], encoding: 'UTF-8', viewport_size: '1280x1024'}
    end
  end

  def profile
    @user = User.first.decorate
  end
end
