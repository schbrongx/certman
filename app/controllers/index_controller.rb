class IndexController < ApplicationController
  skip_before_action :authenticate_user!, only: [:index]
  
  def index
    @keystores = Keystore.includes(:keypair, :csr, :certificate)
    @csrs = Csr.all
    @certificates = Certificate.all
    
    # create and zero-out variables for notifications on index#index
    @keystores_missing_items = 0
    @csrs_unsigned = 0
    @certificates_expiring_soon = 0
    
    # increment @keystores_missing_items if keypair, csr or certificate is missing
    @keystores.each do |k|
      if (k.keypair.nil? || k.csr.nil? || k.certificate.nil?)
        @keystores_missing_items += 1
      end  # if
    end  # do
    
    # TODO : list unsigned CSRs
    @csrs.each do |c|
      unless (Certificate.find_by_csr_id(c.id))
        @csrs_unsigned += 1
      end  # unless
    end  # do
    
    # TODO : count soon expiring certificates
    # TODO : define Setting.expiryWarningDays
    @expiryWarningDays = 60
    @certificates.each do |c|
      logger.debug "  index_controller.rb: @certificates.each, c.id = #{c.id.to_s}".yellow
      cert = OpenSSL::X509::Certificate.new c.content
    end  #do
    
    
    # sum up all notifications
    @notifications = @keystores_missing_items +  @csrs_unsigned + @certificates_expiring_soon

  end  # def
end  # class
