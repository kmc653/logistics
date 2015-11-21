class ClientsController < ApplicationController
  def index
    @clients = Client.all
  end

  def new
    @client = Client.new
  end

  def create
    @client = Client.create(client_params)
    if @client.save
      flash[:success] = "已成功新增目的地"
      redirect_to clients_path
    else
      flash[:error] = "輸入資料有誤，請重新輸入。"
      render :new
    end
  end

  def edit
    @client = Client.where(id: params[:id]).first
  end

  def update
    @client = Client.where(id: params[:id]).first
    if @client.update(client_params)
      flash[:success] = "修改完成。"
      redirect_to clients_path
    else
      flash[:error] = "輸入資料有誤，請重新輸入。"
      render :edit
    end
  end

  def destroy
    @client = Client.where(id: params[:id]).first
    @client.destroy
    redirect_to clients_path
  end

  private

  def client_params
    params.require(:client).permit(:name, :address)
  end
end