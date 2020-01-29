class InfosController < ApplicationController
    def index
    @infos= Info.all
    end

    def show
    @infos = Info.find(params[:id])
    end

    def new
    @infos= Info.new
    end

    def create
         @infos = Info.new(infos_params)
    if @infos.save
        redirect_to infos_path
    else
        render:new
    end    
    end

    def edit
        @infos = Info.find(params[:id])
    end

    def update
        @infos = Info.find(params[:id])
        if @infos.update(infos_params)
            redirect_to infos_path
        else
            render:edit
        end

    end

    def destroy
        @infos = Info.find(params[:id])
        @infos.destroy
        redirect_to infos_path

    end

    private
    def infos_params
        params.require(:info).permit(:fname, :lname, :email, :age, :degree, :passing_year, :company, :website, :add1, :add2, :city, :state, :pincode, :password, :user_name)
    end
end
