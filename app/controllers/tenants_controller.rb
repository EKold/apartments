class TenantsController < ApplicationController

    def create
        @apartment = Apartment.find(params[:apartment_id])
            @tenant = @apartment.tenants.create(params[:tenant].permit(:name, :email, :rent, :living_here_next_year))
        redirect_to apartment_path(@apartment)
    end

    def destroy
        @apartment = Apartment.find(params[:apartment_id])
        @tenant = @apartment.tenants.find(params[:id])
        @tenant.destroy
        redirect_to apartment_path(@apartment)
    end

end
