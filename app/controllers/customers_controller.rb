class CustomersController < ApplicationController
    before_action :authenticate_user!, :except => [ :show, :index ]

    def index
        @customers = Customer.all
    end
  
    def show
        @customer = Customer.find(params[:id])
      end
  
    def new
      @customers = Customer.all

    end
  
    def edit
    end
  
    def create
      @customer = Customer.new(kopi_params)
  
      @customer.save
      redirect_to @customer
    end
  
    def update
    end
  
    def destroy
    end

    private
  
      def customer_params
      params.require(:customer).permit(:name, :kopi_ids => [])
      end

  end
