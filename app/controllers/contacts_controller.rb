class ContactsController < ApplicationController

   def index
      render json: Contact.all
   end

   def create
      contact = Contact.create!(contact_params)
      if contact.valid?
         render json: contact, status: :created
      else
         render json: {error: 'not valid'}, status: 404
      end
   end

   private

   def contact_params
      params.permit(:first_name, :last_name, :email, :message)
   end

end
