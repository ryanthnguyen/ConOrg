class GmForm2sController < ApplicationController
    def index
        @gm_form2s = GmForm2.all
    end

     def show
         @gm_form2 = GmForm2.find(params[:user_id])
     end
        
        
    def new
        begin
            @user = User.find(params[:user_id])
        rescue
            redirect_to users_url, alert: 'Error: user not found'
        end
        @gm_form2 = GmForm2.new
    end

    def create
        begin
            @user = User.find(params[:user_id])
        rescue
            redirect_to users_url, alert: 'Error: user not found'
        end
        @gm_form2 = GmForm2.new(params.require(:gm_form2).permit(:first_name, :last_name, :address, :city, :state, :zip, :age, :games))
        @user.gm_form2s << @gm_form2
        if @user.save
            redirect_to user_url(@user), notice: 'gm_form2 Successfully added'
        else
            flash.now[:alert] = 'Error! unable to create'
            render :new
        end
    end

    def edit
        @gm_form2 = GmForm2.find(params[:id])

    end

    def update
        begin
            @gm_form2 = GmForm2.find(params[:id])
        rescue
            redirect_to users_url, alert: 'Error: gm_form2 not found'
        end
        if @gm_form2.update(params.require(:gm_form2).permit(:first_name, :last_name, :address, :city, :state, :zip, :age, :games, :approved))
            redirect_to user_url(@gm_form2.user), notice: 'gm_form2 successfully updated'
        else
            flash.now[:alert] = 'Error! unable to update'
            render :edit
        end
    end

    def destroy
        begin
            @gm_form2 = GmForm2.find(params[:id])
        rescue
            redirect_to users_url, alert: 'Error: gm_form2 not found'
        end
        @user = @gm_form2.user
        @gm_form2.destroy
        redirect_to user_url(@user), notice: 'gm_form2 destroyed'
    end
end
