class Spree::ContactUs::ContactsController < Spree::BaseController

  helper "spree/products"
  def create
    @contact = Spree::ContactUs::Contact.new(params[:contact_us_contact])        

    if @contact.save
      Contact.create!(params[:contact_us_contact])
      if Spree::ContactUs::Config.contact_tracking_message.present?
        flash[:contact_tracking] = Spree::ContactUs::Config.contact_tracking_message
      end
      redirect_to('/', :notice => t('spree.contact_us.notices.success'))
    else
      render :new
    end
  end

  def new
    @contact = Spree::ContactUs::Contact.new
  end

  def index
    @contacts = Spree::Contact.all
  end
  
  private

  def accurate_title
    t('spree.contact_us.contacts.new.contact_us')
  end

end
