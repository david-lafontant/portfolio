class ContactsController < ApplicationController
  def new
    @contact = Contact.new
  end

  def thanks; end

  def create
    @contact = Contact.new(params[:contact])
    @contact.request = request
    if @contact.deliver
      flash.now[:success] = 'Message sent!'
      redirect_to contacts_thanks_url
    else
      flash.now[:error] = 'Could not send message'
      render :new
    end
  end
end
