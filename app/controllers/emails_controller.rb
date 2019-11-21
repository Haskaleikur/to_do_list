class EmailsController < ApplicationController

    def index
        @emails = Email.all
     end

    def create
        @email = Email.new(object: Faker::Book.title, body: Faker::Lorem.paragraph)
        
        respond_to do |format|
            if @email.save
            format.html { redirect_to root_path }
            format.js { }
            end
        end

     end

    def show
        @email = Email.find(params[:id])
            respond_to do |format|
                format.html {redirect_to email_path(@email.id)}
                format.js {}
            end
    end

    def destroy
        @email = Email.find(params[:id])
        respond_to do |format|
            @email.destroy
            format.html {redirect_to emails_path}
            format.js {}
        end
    end


    def emails_params 
        params.permit(:object, :body)
    end

    
end
