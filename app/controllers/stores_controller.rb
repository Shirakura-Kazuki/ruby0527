class StoresController < ApplicationController
    before_action :set_store, only: [:show, :edit, :update, :destroy]
  
    def index
      @stores = Store.all
    end
  
    def show
    end
  
    def new
      @store = Store.new
    end
  
    def create
      @store = Store.new(store_params)
  
      if @store.save
        redirect_to @store, notice: '店舗情報が登録されました。'
      else
        render :new
      end
    end
  
    private
  
    def set_store
      @store = Store.find(params[:id])
    end
  
    def store_params
      params.require(:store).permit(:name, :rating, :hours)
    end

    def destroy
        @store.destroy
        redirect_to stores_path, notice: '店舗が削除されました。'
    end
      
  end
  