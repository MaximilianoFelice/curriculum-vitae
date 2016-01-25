class HomeController < ApplicationController
  def index
    mixpanel.track('Home View') if request.format.html?
    mixpanel.track('PDF Render') if request.format.pdf?

    @user = User.first.decorate
    respond_to do |format|
      format.html
      format.pdf { render pdf: "MaximilianoFelice", 
                          disposition: 'inline', 
                          layout: "layouts/pdf.html", 
                          show_as_html: params[:debug].present?, 
                          formats: [:html], 
                          encoding: 'UTF-8', 
                          viewport_size: '1280x1024', 
                          javascript_delay: 2000
                        }
    end
  end

  def profile
    mixpanel.track('Profile View')

    @user = User.first.decorate
  end
end
