class FriendsController < ApplicationController
    skip_before_action :verify_authenticity_token
    def index
        @friend=Friend.all
    end

    def new
        @friend=Friend.new
    end

    def show
        set_friend
    end

    def edit
        set_friend
    end

    def update
        set_friend
        if get_params[:dob].to_date < Date.today && @friend.update(get_params)
            flash[:notice]=1
            redirect_to @friend
        elsif get_params[:dob].to_date >  Date.today
            flash[:notice]=0
            render 'edit'
        else
            render :edit, status: :unprocessable_entity
        end
    end

    def create
        @friend=Friend.new(get_params)
        if @friend.dob.to_date < Date.today && @friend.save
            flash[:notice]=1
            redirect_to @friend
        elsif @friend.dob.to_date > Date.today
            flash[:notice]=0
            render 'new'
        else
            render :new, status: :unprocessable_entity 
        end
    end

    def destroy
        @friend=Friend.find(params[:id]).destroy
        flash[:notice]=2
        redirect_to friends_path
        
    end

    private

    def get_params
        params.require(:friend).permit(:name, :location, :dob, :contact)
    end

    def set_friend
        @friend=Friend.find(params[:id])
    end


end
