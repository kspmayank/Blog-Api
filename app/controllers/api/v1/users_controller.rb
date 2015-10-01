module Api
  module V1
    class UsersController < ApplicationController
      skip_before_filter  :verify_authenticity_token
      respond_to :json
      
      def index
        respond_with User.all
      end
      
      def show
        respond_with User.find(params[:id])
      end
      
      def create
        respond_with User.create(name: params[:name], mobileno: params[:mobileno])
      end
      
      def update
        respond_with User.update(params[:id], name: params[:name], mobileno: params[:mobileno])
      end
      
      def destroy
        respond_with User.destroy(params[:id])
      end
    end
  end
end