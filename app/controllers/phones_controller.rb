class PhonesController < ApplicationController
  def index
     @phones = Phone.all
   end

   def new
     @phone = Phone.new
   end

   def create
     @phone = Phone.create(phone_params)
     if @phone.valid?
       redirect_to phones_path
     else
       render :new
     end
   end

   def phone_params
     params.require(:phone).permit(:number, :manufacturer)
   end
 end
