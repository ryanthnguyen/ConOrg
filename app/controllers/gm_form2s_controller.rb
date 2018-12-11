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
        @gm_form2 = GmForm2.new(params.require(:gm_form2).permit(:age_restriction, :game_attitude, :game_description, :game_system_used, :info_for_staff, :materials_needed, :minimum_number_of_players, :maximum_number_of_players, :player_experience, :start_time_first_choice, :start_time_second_choice, :start_time_third_choice, :time_needed_for_game, :title_of_adventure_or_session, :type_of_game))
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
        if @gm_form2.update(params.require(:gm_form2).permit(:age_restriction, :game_attitude, :game_description, :game_system_used, :info_for_staff, :materials_needed, :minimum_number_of_players, :maximum_number_of_players, :player_experience, :start_time_first_choice, :start_time_second_choice, :start_time_third_choice, :time_needed_for_game, :title_of_adventure_or_session, :type_of_game, :approved))
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
