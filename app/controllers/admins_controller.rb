class AdminsController < ApplicationController
    def home
        begin
          @admin = Admin.find(params[:id])
        rescue
          redirect_to home_url, alert: 'Error: Admin not found'
        end
        @registration_form = @admin.registration_forms.find(@admin.registration_form_ids.sample)
        @dealer_form = @admin.dealer_forms.find(@admin.dealer_form_ids.sample)
        @gm_form1 = @admin.gm_form1s.find(@admin.gm_form1_ids.sample)
        @gm_form2 = @admin.gm_form2s.find(@admin.gm_form2_ids.sample)
        @panelist_form = @admin.panelist_forms.find(@admin.panelist_form_ids.sample)
    end
    def index
        @admins = Admin.all
        
    end

    def show
        begin
            @admin = Admin.find(params[:id])
        rescue
            redirect_to admins_url, alert: 'Error: Admin not found'
        end
    end

    def new
        @admin = Admin.new
    end

    def create
        @admin = Admin.new(params.require(:admin).permit(:address, :age, :city, :email_address, :first_name, :last_name, :phone, :state, :zip))
        if @admin.save
            redirect_to admin_url(@admin), notice: 'Admin Successfully added'
        else
            flash.now[:alert] = 'Error! unable to create'
            render :new
        end
    end

    def edit
        @admin = Admin.find(params[:id])
        
    end
        
    def update
        @admin = Admin.find(params[:id])
        if @admin.update(params.require(:admin).permit(:address, :age, :city, :email_address, :first_name, :last_name, :phone, :state, :zip))
            redirect_to admin_url(@admin), notice: 'Admin successfully updated'
        else
            flash.now[:alert] = 'Error! unable to update'
            render :edit
        end
    end

    def destroy
        @admin = Admin.find(params[:id])
        @admin.destroy
        redirect_to admins_url, notice: 'Admin destroyed'
    end
end
