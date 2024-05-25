class LanguageServicesController < ApplicationController
  def index
    @language_services = LanguageService.all
    render inertia: 'language_services/Index', props: { language_services: @language_services }
  end

  def new
    @language_service = LanguageService.new
    render inertia: 'language_services/New', props: { language_service: @language_service }
  end

  def create
    @language_service = LanguageService.new(language_service_params)
    if @language_service.save
      redirect_to language_services_path
    else
      render inertia: 'language_services/New', props: { language_service: @language_service }
    end
  end

  private

  def language_service_params
    params.require(:language_service).permit(:name, :description)
  end
end
