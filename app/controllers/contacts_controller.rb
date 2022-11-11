class ContactsController < ApplicationController

   def index
      render json: Contact.all
   end

   def create
      contact = Contact.create(contact_params)
      render json: contact, status: :created
   end

   private

   def contact_params
      params permit(:first_name, :last_name, :email, :message)
   end

end
