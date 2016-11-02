class IndexController < ApplicationController
  skip_before_action :authenticate_user!, only: [:index]
  
  def index
    @keystores = Keystore.includes(:keypair, :csr, :certificate)
    @csrs = Csr.includes(:keypair, :csrtemplate)
    @certificates = Certificate.includes(:certificatetype, :csr)
    
    # create and zero-out variables for notifications on index#index
    @keystores_missing_items = 0
    @csrs_unsigned = 0
    @certificates_expiring_soon = 0
    
    # increment @keystores_missing_items if keypair, csr or certificate is missing
    @keystores.each do |k|
      if (k.keypair.nil? || k.csr.nil? || k.certificate.nil?)
        @keystores_missing_items += 1
      end  # if
    end  #do
    
    # TODO : count unsigned CSRs
    
    # TODO : count soon expiring certificates
    
    
    # sum up all notifications
    @notifications = @keystores_missing_items +  @csrs_unsigned + @certificates_expiring_soon
  end  # def
end  # class
