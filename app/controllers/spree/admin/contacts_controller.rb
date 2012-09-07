module Spree
  module Admin
    class ContactsController < Spree::Admin::BaseController
  
      def index
        @contacts = Spree::Contact.order('updated_at DESC').page(params[:page]).per(20)   
      end
      
    end
  end
end
