class GuestsController < ApplicationController
  def index
      @guests = Guest.all
      respond_to do |format|
        format.html
        format.csv {send_data @guests.to_csv}
      end
  end
  
  def confirmation_email
    @guests = Guest.all
    
    @guests.each do |guest|
      GuestMailer.confirmation_email(guest).deliver
    end
    
    redirect_to guests_path
    flash[:notice] = "Email Sent Successfully"
  end
  
  def import
    Guest.import(params[:file])
    redirect_to guests_path, notice: "Guests Imported."
  end
  
end
