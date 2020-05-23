class UsersController < ApplicationController
    before_action :set_user, only: %i[show edit update]
    before_action :user_check, only: %i[show]
    before_action :login_check, only: %i[new]

    def new
        @user = User.new
    end

    def show
    end

    def edit
    end

    def update
        if @user.update(user_params)
            redirect_to user_path(@user.id)
        else
            render :edit
        end
    end

    def destroy
    end
    
    def create
        @user = User.new(user_params)
        if @user.save
            session[:user_id] = @user.id
            flash[:notice] = 'ログインしました'
            redirect_to user_path(@user.id)
        else
            render :new
        end
    end

    private
    def set_user
        @user = User.find(params[:id])
    end

    def ensure_corret_user
        if current_user.id != @user.id
            flash[:notice] = "権限がありません"
            redirect_to user_path(@user.id) 
        end
    end

    def user_params
        params.require(:user).permit(:name, :nickname, :age, :gender, :maritalstatus, :country, :prefecture, :email, :password, :password_confirmation, :image, :image_cache)
    end

    def set_user
        @user = User.find(params[:id])
    end
    
    def user_check
        redirect_to root_path if current_user != @user
    end
    
    def login_check
        redirect_to user_path(current_user.id) if logged_in?
    end
end
