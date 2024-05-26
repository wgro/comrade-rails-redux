class LanguageServicesController < ApplicationController
  def index
    @language_services = LanguageService.all.map do |service|
      service.attributes.merge('description' => helpers.maybe_description(service[:description]), 'homepages_count' => service.homepages.count)
    end
    render inertia: 'language_services/Index', props: { language_services: @language_services }
  end

  def new
    @language_service = LanguageService.new
    render inertia: 'language_services/New', props: { language_service: @language_service }
  end

  def edit
    @language_service = LanguageService.find(params[:id])
    render inertia: 'language_services/Edit', props: { language_service: @language_service }
  end

  def create
    @language_service = LanguageService.new(language_service_params)
    if @language_service.save
      redirect_to language_services_path
    else
      redirect_back(
        fallback_location: language_services_path,
        inertia: { errors: @language_service.errors.messages }
      )
    end
  end

  def update
    @language_service = LanguageService.find(params[:id])
    Rails.logger.info "Params: #{params.inspect}"
    if @language_service.update(language_service_params)
      redirect_to language_services_path
    else
      redirect_back(
        fallback_location: language_services_path,
        inertia: { errors: @language_service.errors.messages }
      )
    end
  end

  def destroy
    @language_service = LanguageService.find(params[:id])
    @language_service.destroy!
    redirect_to language_services_path
  end

  private

  def language_service_params
    params.require(:language_service).permit(:name, :description, homepages_attributes: [:url, :id, :_destroy])
  end
end
